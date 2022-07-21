#!/bin/bash

#rsync "/cygdrive/f/Backups PC/SYNC/Reactions/" -av --itemize-changes --progress --no-owner --no-group "/cygdrive/s/Reactions/" --dry-run

rsync "/cygdrive/f/Backups PC/SYNC/Reactions/" -avz --itemize-changes --progress --no-owner --no-group jeanluchayes@52.147.207.156::SYNC-Reactions --dry-run
