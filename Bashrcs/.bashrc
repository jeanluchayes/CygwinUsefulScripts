DISPLAY=localhost:0.0

if [[ "${OSTYPE}" == 'cygwin' ]]; then
    set -o igncr
    export SHELLOPTS
fi

_CWD=$(pwd)

cd ~

_CURRENT_DRIVE=$(python get_set_drive_letter.py)

export _CURRENT_DRIVE

#Default No anaconda
source ~/.nocondarc

cd $_CWD

#Exit Trap
exit_session() {
    . "$HOME/.bash_logout"
}
trap exit_session SIGHUP
