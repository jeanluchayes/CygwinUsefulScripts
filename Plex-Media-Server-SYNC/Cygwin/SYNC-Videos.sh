#!/bin/bash

#rsync "/cygdrive/f/Backups PC/SYNC/Videos/" -av --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Videos/" --dry-run

#rclone sync "F:/Backups PC/SYNC/Videos/" OneDrive-crypt:Videos --progress --dry-run

#rsync "/cygdrive/f/Backups PC/SYNC/Videos/" -avz --itemize-changes --progress --no-owner --no-group -e "ssh -T -o Compression=no -o MACs=hmac-sha2-256 -x" root@52.147.207.156:/media/Plex/Videos/ --dry-run

rsync "/cygdrive/f/Backups PC/SYNC/Videos/" -avz --exclude={'.stfolder','.stversions'} \
--itemize-changes --progress --no-owner --no-group jeanluchayes@52.147.207.156::SYNC-Videos