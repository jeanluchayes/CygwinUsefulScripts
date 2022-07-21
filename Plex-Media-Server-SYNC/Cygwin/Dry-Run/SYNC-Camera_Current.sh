#!/bin/bash

#rsync "/cygdrive/f/Backups PC/SYNC/Camera_Current/" -av --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Camera_Current/" --dry-run

rsync "/cygdrive/f/Backups PC/SYNC/Camera_Current/" -avz --itemize-changes --progress --no-owner --no-group jeanluchayes@52.147.207.156::SYNC-Camera_Current --dry-run
