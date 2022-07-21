#!/bin/bash


#Set the Repository Directory (My Portable Hard Drive)
export BUP_DIR=/cygdrive/p/Backups\ BP


#Kindle Backup
bup index /cygdrive/k/
bup save -n Kindle /cygdrive/k/


#Prevent Bit Rot
bup fsck -g

#See the Snapshots, Open 127.0.0.1:8080 to see the Files
bup web
