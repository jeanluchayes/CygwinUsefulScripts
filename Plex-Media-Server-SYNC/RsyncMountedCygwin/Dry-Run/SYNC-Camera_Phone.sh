#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Camera_Phone/" -av --exclude={'.stfolder','.stversions'} \
--append-verify --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Camera_Phone/" --dry-run