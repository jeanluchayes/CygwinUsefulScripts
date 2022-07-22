#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Music/" -av --exclude={'.stfolder','.stversions'} \
--append-verify --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Music/" --dry-run