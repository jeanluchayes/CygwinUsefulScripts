#!/bin/bash

#Automatic Backup File for the export of Global Safety Management Desktop

#Set the Repository Directory (My External Flash Drive)
export BUP_DIR=/cygdrive/j/Life/8-Global\ Safety\ Management/bup

#Index The Files you want to save
bup index /cygdrive/c/Users/Jean-Luc\ Hayes/Desktop

#Save the Backup
bup save -n GSM-Desktop /cygdrive/c/Users/Jean-Luc\ Hayes/Desktop

#Prevent Bit Rot
bup fsck -g

#See the Snapshots, Open 127.0.0.1:8080 to see the Files
bup web
