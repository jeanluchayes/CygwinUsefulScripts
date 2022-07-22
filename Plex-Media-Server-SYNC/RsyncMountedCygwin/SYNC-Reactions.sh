#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Reactions/" -av --exclude={'.stfolder','.stversions'} \
--append-verify --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Reactions/"