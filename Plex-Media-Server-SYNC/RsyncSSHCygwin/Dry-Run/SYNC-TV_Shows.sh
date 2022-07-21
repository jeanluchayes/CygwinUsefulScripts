#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/TV_Shows/" -avz --exclude={'.stfolder','.stversions'} \
--itemize-changes --progress --no-owner --no-group \
-e "ssh -T -o Compression=no -o MACs=hmac-sha2-256 -x" root@52.147.207.156:/media/Plex/TV_Shows/ --dry-run