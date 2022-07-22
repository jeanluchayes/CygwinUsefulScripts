#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Pictures/" -av --exclude={'.stfolder','.stversions'} \
--append-verify --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Pictures/" --dry-run