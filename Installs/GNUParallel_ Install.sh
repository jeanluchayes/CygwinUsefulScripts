#!/bin/bash

wget http://ftpmirror.gnu.org/parallel/parallel-20150322.tar.bz2
    bzip2 -dc parallel-20150322.tar.bz2 | tar xvf -
    cd parallel-20150322
    ./configure && make && make install


tee -a ~/.bashrc << END
PATH=$PATH:$HOME/bin
PATH=$PATH:/usr/local/bin
END
