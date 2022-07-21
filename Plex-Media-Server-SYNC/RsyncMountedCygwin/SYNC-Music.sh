#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Music/" -avz --exclude={'.stfolder','.stversions'} \
--itemize-changes --progress --no-owner --no-group "/cygdrive/s/Music/"