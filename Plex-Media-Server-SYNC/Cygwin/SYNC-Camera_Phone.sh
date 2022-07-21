#!/bin/bash

#rsync "/cygdrive/f/Backups PC/SYNC/Camera_Phone/" -av --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Camera_Phone/" --dry-run

rsync "/cygdrive/f/Backups PC/SYNC/Camera_Phone/" -avz --exclude={'.stfolder','.stversions'} \
--itemize-changes --progress --no-owner --no-group jeanluchayes@52.147.207.156::SYNC-Camera_Phone
