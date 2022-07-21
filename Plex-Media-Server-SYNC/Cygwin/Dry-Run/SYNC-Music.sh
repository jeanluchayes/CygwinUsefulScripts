#!/bin/bash

#'rsync "/cygdrive/f/Backups PC/SYNC/Music/" -avu --itemize-changes --progress --no-owner --no-group -e "ssh -T -o Compression=no -o MACs=hmac-sha2-256 -x" root@52.147.207.156:/media/Plex/Music/ --dry-run

#rsync "/cygdrive/f/Backups PC/SYNC/Music/" -av --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Music/" --dry-run

rsync "/cygdrive/f/Backups PC/SYNC/Music/" -avz --itemize-changes --progress --no-owner --no-group jeanluchayes@52.147.207.156::SYNC-Music --dry-run