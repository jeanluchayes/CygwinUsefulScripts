#!/bin/bash


#Set the Repository Directory (My Portable Hard Drive)
export BUP_DIR=/cygdrive/p/Backups\ BP


#Main Rig - Drive D

#Main Rig - Drive D - Games Backup - Blizzard
bup index /cygdrive/d/Blizzard
bup save -n Games-D-Blizzard /cygdrive/d/Blizzard

#Main Rig - Drive D - Games Backup - Epic Games
bup index /cygdrive/d/Epic\ Games
bup save -n Games-D-Epic /cygdrive/d/Epic\ Games

#Main Rig - Drive D - Games Backup - Nexus Mod Manager
bup index /cygdrive/d/Games
bup save -n Games-D-Nexus /cygdrive/d/Games

#Main Rig - Drive D - Games Backup - GOG
bup index /cygdrive/d/GOG
bup save -n Games-D-GOG /cygdrive/d/GOG

#Main Rig - Drive D - Games Backup - Origin
bup index /cygdrive/d/Origin
bup save -n Games-D-Origin /cygdrive/d/Origin

#Main Rig - Drive D - Games Backup - Steam
bup index /cygdrive/d/Steam
bup save -n Games-D-Steam /cygdrive/d/Steam

#Main Rig - Drive G

#Main Rig - Drive G - Games Backup - EG Shiaya
bup index /cygdrive/g/EG\ Shiaya
bup save -n Games-G-EG-Shiaya /cygdrive/g/EG\ Shiaya

#Main Rig - Drive G - Games Backup - Shiaya
bup index /cygdrive/g/Shiaya
bup save -n Games-G-Shiaya /cygdrive/g/Shiaya

#Main Rig - Drive G - Games Backup - EVE Online
bup index /cygdrive/g/EVE
bup save -n Games-G-EVE /cygdrive/g/EVE

#Main Rig - Drive G - Games Backup - Steam
bup index /cygdrive/g/Steam
bup save -n Games-G-Steam /cygdrive/g/Steam



#Prevent Bit Rot
bup fsck -g

#See the Snapshots, Open 127.0.0.1:8080 to see the Files
bup web
