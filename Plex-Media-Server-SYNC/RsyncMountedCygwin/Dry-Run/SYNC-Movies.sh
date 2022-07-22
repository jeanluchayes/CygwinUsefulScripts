#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Movies/" -av --exclude={'.stfolder','.stversions'} \
--append-verify --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Movies/" --dry-run