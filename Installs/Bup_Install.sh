#!/bin/bash

#python -m ensurepip
pip install tornado

apt-cyg install par2

cd ~
git clone https://github.com/bup/bup.git
cd bup
git checkout 0.27
make
make install DESTDIR=/opt/bup_w_fuse PREFIX=''

apt-cyg install python-lxml

git remote add webdav https://github.com/wrouesnel/bup.git
git fetch webdav bup-web-improvements
git checkout bup-web-improvements
make
make install DESTDIR=/opt/bup_w_fuse PREFIX=''

ln -s /opt/bup_w_fuse/bin/bup /opt/bup_w_fuse/bin/bup_w_fuse

rm -r ~/bup -f



cd ~
git clone https://github.com/bup/bup.git
cd bup
git checkout 0.29.2
make
make install DESTDIR=/opt/bup PREFIX=''

#tee -a ~/.bashrc << END
#export PATH=/opt/bup/bin:$PATH
#END

#tee -a ~/.bashrc << END
#export PATH=/opt/bup_w_fuse/bin:$PATH
#END