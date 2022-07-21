#!/bin/bash

#rsync "/cygdrive/f/Backups PC/SYNC/Pictures/" -av --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Pictures/" --dry-run

rsync "/cygdrive/f/Backups PC/SYNC/Pictures/" -avz --itemize-changes --progress --no-owner --no-group jeanluchayes@52.147.207.156::SYNC-Pictures --dry-run
