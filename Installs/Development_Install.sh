#!/bin/bash

#Dont:
#Mobaxterm already has them
#apt-cyg wget curl

#Cyg Extras and Documentation
apt-cyg install man-pages-posix cygport doxygen diffutils dos2unix

apt-cyg install openssh openssl openssl-devel libffi-devel gmp libgmp-devel

#Make and Configs
apt-cyg install gperf help2man libtool make patch patchutils pkg-config swig

apt-cyg install autoconf autoconf2.1 autogen automake bison m4 check

apt-cyg install flex libreadline7 zlib-devel procps-ng

#GCC and Cross Compiliation
apt-cyg install binutils gcc-g++ gcc-fortran gdb gmp texinfo gawk

apt-cyg install mingw64-i686-binutils mingw64-i686-gcc-core mingw64-i686-runtime mingw64-i686-headers mingw64-i686-pthreads

apt-cyg install mingw64-x86_64-binutils mingw64-x86_64-gcc-core	mingw64-x86_64-runtime mingw64-x86_64-headers mingw64-x86_64-pthreads

#Languages
apt-cyg install python python2 python3 python-devel libcrypt-devel python-crypto python-openssl python-setuptools perl

apt-cyg install python27-pip python35-pip python36-pip python37-pip python38-pip
