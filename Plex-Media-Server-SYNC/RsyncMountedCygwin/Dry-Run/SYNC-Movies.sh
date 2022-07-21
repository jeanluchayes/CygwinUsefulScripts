#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Movies/" -avz --exclude={'.stfolder','.stversions'} \
--itemize-changes --progress --no-owner --no-group "/cygdrive/s/Movies/" --dry-run