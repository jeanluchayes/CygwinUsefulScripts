#!/bin/bash

rsync "/cygdrive/f/Backups PC/SYNC/Videos/" -avz --exclude={'.stfolder','.stversions'} \
--itemize-changes --progress --no-owner --no-group jeanluchayes@52.147.207.156::SYNC-Videos