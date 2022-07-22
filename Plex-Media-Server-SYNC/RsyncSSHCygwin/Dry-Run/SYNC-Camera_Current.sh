#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Camera_Current/" -av --exclude={'.stfolder','.stversions'} \
--append-verify --itemize-changes --progress --no-owner --no-group \
-e "ssh -T -o Compression=no -o MACs=hmac-sha2-256 -x" root@52.147.207.156:/media/Plex/Camera_Current/ --dry-run