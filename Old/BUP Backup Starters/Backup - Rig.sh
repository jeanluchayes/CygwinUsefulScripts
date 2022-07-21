#!/bin/bash


#Set the Repository Directory (My Portable Hard Drive)
export BUP_DIR=/cygdrive/p/Backups\ BP

#Desktop, Downloads, Music, Pictures Videos

#Main Rig Desktop Backup
bup index /cygdrive/c/Users/Jean-Luc/Desktop
bup save -n Rig-Desktop /cygdrive/c/Users/Jean-Luc/Desktop

#Main Rig Documents Backup
bup index /cygdrive/c/Users/Jean-Luc/Documents
bup save -n Rig-Documents /cygdrive/c/Users/Jean-Luc/Documents

#Main Rig Downloads Backup
bup index /cygdrive/c/Users/Jean-Luc/Downloads
bup save -n Rig-Downloads /cygdrive/c/Users/Jean-Luc/Downloads

#Main Rig Music Backup
bup index /cygdrive/c/Users/Jean-Luc/Box\ Sync/SYNC/Music
bup save -n Rig-Music /cygdrive/c/Users/Jean-Luc/Box\ Sync/SYNC/Music

#Main Rig Pictures
bup index /cygdrive/c/Users/Jean-Luc/Box\ Sync/SYNC/Pictures
bup save -n Rig-Pictures /cygdrive/c/Users/Jean-Luc/Box\ Sync/SYNC/Pictures

#Main Rig Videos
bup index /cygdrive/c/Users/Jean-Luc/Box\ Sync/SYNC/Videos
bup save -n Rig-Videos /cygdrive/c/Users/Jean-Luc/Box\ Sync/SYNC/Videos


#Minecraft Saves
bup index /cygdrive/c/Users/Jean-Luc/AppData/Roaming/.minecraft
bup save -n Minecraft /cygdrive/c/Users/Jean-Luc/AppData/Roaming/.minecraft


#Manic Time
bup index /cygdrive/c/Users/Jean-Luc/AppData/Local/Finkit
bup save -n ManicTime /cygdrive/c/Users/Jean-Luc/AppData/Local/Finkit


#Prevent Bit Rot
bup fsck -g

#See the Snapshots, Open 127.0.0.1:8080 to see the Files
bup web
