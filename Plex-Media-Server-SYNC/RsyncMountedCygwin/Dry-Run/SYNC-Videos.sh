#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Videos/" -av --exclude={'.stfolder','.stversions'} \
--append-verify --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Videos/" --dry-run