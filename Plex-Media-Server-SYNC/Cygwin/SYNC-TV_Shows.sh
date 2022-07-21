#!/bin/bash

#rsync "/cygdrive/f/Backups PC/SYNC/TV_Shows/" -av --itemize-changes --progress --no-owner --no-group "/cygdrive/s/TV_Shows/" --dry-run

rsync "/cygdrive/f/Backups PC/SYNC/TV_Shows/" -avz --exclude={'.stfolder','.stversions'} \
--itemize-changes --progress --no-owner --no-group jeanluchayes@52.147.207.156::SYNC-TV_Shows
