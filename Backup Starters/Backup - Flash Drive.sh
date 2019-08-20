#!/bin/bash


#Set the Repository Directory (My Portable Hard Drive)
export BUP_DIR=/cygdrive/p/Backups\ BP


#Flash Drive Backup
bup index /cygdrive/f/
bup save -n FlashDrive /cygdrive/f/


#Prevent Bit Rot
bup fsck -g

#See the Snapshots, Open 127.0.0.1:8080 to see the Files
bup web
