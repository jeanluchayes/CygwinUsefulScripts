#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/TV_Shows/" -av --exclude={'.stfolder','.stversions'} \
--append-verify --itemize-changes --progress --no-owner --no-group "/cygdrive/s/TV_Shows/" --dry-run