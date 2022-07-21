#!/bin/bash

#rsync "/cygdrive/f/Backups PC/SYNC/Movies/" -av --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Movies/" --dry-run

rsync "/cygdrive/f/Backups PC/SYNC/Movies/" -avz --exclude={'.stfolder','.stversions'} \
--itemize-changes --progress --no-owner --no-group jeanluchayes@52.147.207.156::SYNC-Movies
