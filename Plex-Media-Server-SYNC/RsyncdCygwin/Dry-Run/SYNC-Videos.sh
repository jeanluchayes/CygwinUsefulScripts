#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Videos/" -av --exclude={'.stfolder','.stversions'} \
--append-verify --itemize-changes --progress --no-owner --no-group jeanluchayes@52.147.207.156::SYNC-Videos --dry-run