#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Reactions/" -avz --exclude={'.stfolder','.stversions'} \
--itemize-changes --progress --no-owner --no-group "/cygdrive/s/Reactions/" --dry-run