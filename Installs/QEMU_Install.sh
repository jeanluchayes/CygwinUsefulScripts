#!/bin/bash
#Build QEMU for Windows in Cygwin

#apt-get install $(grep -vE "^\s*#" mingw64_packages_list.txt  | tr "\n" " ")


mkdir ~/debian-bootstrap
cd ~/debian-bootstrap
tar xzf debootstrap_1.0.36.tar
cd debootstrap

touch debootstrap-patch.txt

#Contents of File Below:

# diff -Naur debootstrap/arch deb/arch
# --- debootstrap/arch	1969-12-31 19:00:00.000000000 -0500
# +++ deb/arch	2011-09-13 23:16:15.679411000 -0400
# @@ -0,0 +1 @@
# +linux
# diff -Naur debootstrap/debootstrap deb/debootstrap
# --- debootstrap/debootstrap	2011-08-15 19:35:15.000000000 -0400
# +++ deb/debootstrap	2011-09-13 23:04:10.751954500 -0400
# @@ -404,6 +404,9 @@
#  # basic host OS guessing for non-Debian systems
#  if [ -z "$HOST_OS" ]; then
#  	case $(uname) in
# +		CYGWIN*)
# +			HOST_OS=linux
# +		;;
#  		Linux)
#  			HOST_OS=linux
#  		;;
# diff -Naur debootstrap/functions deb/functions
# --- debootstrap/functions	2011-08-21 18:34:16.000000000 -0400
# +++ deb/functions	2011-09-13 23:16:36.240522400 -0400
# @@ -1232,6 +1232,8 @@
#  	case "$HOST_OS" in
#  	    *freebsd*|hurd*)
#  		;;
# +	    linux*)
# +		;;
#  	    *)
#  		mknod "$1/test-dev-null" c 1 3 || return 1
#  		if ! echo test > "$1/test-dev-null"; then


patch -p1 <debootstrap-patch
cd ..
mv debootstrap deb
export DEBOOTSTRAP_DIR=~/debian-bootstrap/deb
cd deb

export CYGWIN="winsymlinks:native"
debootstrap --verbose --arch=amd64 --extractor=ar --foreign --no-check-gpg buster /cygdrive/u http://ftp.debian.org/debian

mkdir /cygdrive/u/tarball
mkdir /cygdrive/u/debootstrap

debootstrap --verbose --arch=amd64 --extractor=ar --make-tarball=/cygdrive/u/tarball/big-tarball.tar.gz --no-check-gpg buster /cygdrive/u/debootstrap http://ftp.debian.org/debian
debootstrap --verbose --arch=amd64 --extractor=ar --unpack-tarball=/cygdrive/u/tarball/big-tarball.tar.gz --no-check-gpg buster /cygdrive/u/debootstrap http://ftp.debian.org/debian



cd ~
git clone git://git.qemu-project.org/qemu.git
cd qemu

SRC_PATH=$PWD
DLL_PATH=$SRC_PATH/dll
mkdir -p $DLL_PATH


#Build for 32-bit Windows
BUILD_DIR=$SRC_PATH/bin/debug/i686-w64-mingw32
mkdir -p $BUILD_DIR
cd $BUILD_DIR
../../../configure --python=python3 --disable-werror --enable-debug  --target-list="x86_64-softmmu" --cross-prefix=i686-w64-mingw32-
make
ln -s /usr/i686-w64-mingw32/sys-root/mingw/bin $DLL_PATH/w32
cd $BUILD_DIR
make installer INSTALLER=QEMU_w32_Install.exe

--prefix="c:/Qemu" 


#Build for 64 bit Windows
BUILD_DIR=$SRC_PATH/bin/debug/x86_64-w64-mingw32
mkdir -p $BUILD_DIR
cd $BUILD_DIR
../../../configure --python=python3 --disable-werror --enable-debug --target-list="x86_64-softmmu" --cross-prefix=x86_64-w64-mingw32-
make
ln -s /usr/x86_64-w64-mingw32/sys-root/mingw/bin $DLL_PATH/w64
cd $BUILD_DIR
make installer INSTALLER=QEMU_w64_Install.exe



makensis -V4 \
-NOCD \
-DW64 \
-DCONFIG_DOCUMENTATION="y" \
-DCONFIG_GTK="y" \
-DBINDIR="J:\PortableApps\CygwinPortableTerminal\App\Runtime\cygwin\tmp\qemu-nsis" \
-DDLLDIR="J:\PortableApps\CygwinPortableTerminal\App\Runtime\cygwin\usr\x86_64-w64-mingw32\sys-root\mingw\bin" \
-DSRCDIR="J:\PortableApps\CygwinPortableTerminal\App\Runtime\cygwin\home\Jean-Luc\qemu" \
-DOUTFILE="QEMU_w64_Install.exe" \
-DDISPLAYVERSION="4.2.50" \
"J:\PortableApps\CygwinPortableTerminal\App\Runtime\cygwin\home\Jean-Luc\qemu\qemu.nsi"