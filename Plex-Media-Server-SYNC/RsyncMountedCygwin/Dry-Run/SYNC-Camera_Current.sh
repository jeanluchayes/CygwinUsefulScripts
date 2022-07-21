#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Camera_Current/" -avz --exclude={'.stfolder','.stversions'} \
--itemize-changes --progress --no-owner --no-group "/cygdrive/s/Camera_Current/" --dry-run