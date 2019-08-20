#!/bin/bash
#
# Installs packages needed for smartcard use under Cygwin.
#

apt-cyg install kgpg gnupg2 pinentry-gtk2 rng-tools psmisc

set -e

#Create .gnupg dir
gpg2 --list-keys

#Configure gpg.conf
tee -a ~/.gnupg/gpg.conf << END
keyserver hkps://hkps.pool.sks-keyservers.net
keyserver-options ca-cert-file=~/.gnupg/sks-keyservers.netCA.pem
use-agent
charset utf8
keyid-format 0xlong
no-emit-version
no-greeting
cipher-algo AES256
digest-algo SHA256
personal-digest-preferences SHA512
personal-cipher-preferences AES256 AES
cert-digest-algo SHA512
default-preference-list SHA512 SHA384 SHA256 SHA224 AES256 AES192 AES CAST5 ZLIB ZIP Uncompressed
s2k-cipher-algo AES256
s2k-digest-algo SHA512
s2k-mode 3
s2k-count 65536
keyserver-options no-honor-keyserver-url
utf8-strings
auto-key-locate keyserver cert pka
END


#Configure gpg-agent.conf:
tee -a ~/.gnupg/gpg-agent.conf << END
enable-ssh-support
keep-display
keep-tty
default-cache-ttl 3600
max-cache-ttl 7200
#scdaemon-program /usr/lib/gnupg/scdaemon
sh
debug-level basic
homedir ~/.gnupg
END


#Restart agent
gpg-connect-agent killagent /bye
gpg-connect-agent /bye

#Add to ~/.bashrc (or other place that gets run automatically).
tee -a ~/.bashrc << END
#Kill GPG Tasks
taskkill /im gpg-agent.exe /F
taskkill /im ssh-agent.exe /F

GPG_TTY=$(tty)
export GPG_TTY
if [ -z "$GPG_AGENT_INFO" ]; then
    eval "$(gpg-agent --daemon --enable-ssh-support --options ~/.gnupg/gpg-agent.conf)"
fi

if [ -z "$SSH_AUTH_SOCK" ]; then
    SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
    export SSH_AUTH_SOCK
fi

#Use gpg2 instead of gpg.
alias gpg=gpg2
END

cat << EOF
NOTE: If you're running VMWare and need to attach a YubiKey in composite mode,
you will need to make changes to the .vmx file to allow you to attach HID
devices:

  usb.generic.allowHID = "TRUE"
  usb.generic.allowLastHID = "TRUE"

You may also want to disable "Smart Card Sharing" since it doesn't seem to work.

  usb.ccid.useSharedMode = "FALSE"
EOF
