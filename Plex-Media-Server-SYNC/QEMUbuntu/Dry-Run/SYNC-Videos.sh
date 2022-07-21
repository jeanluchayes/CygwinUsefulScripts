#!/bin/bash

rsync "/host_folders/SYNC/Videos/" -avu --itemize-changes --progress --no-owner --no-group -e "ssh -T -o Compression=no -x" root@52.147.207.156:/media/Plex/Videos/ --dry-run

#rsync -avz --itemize-changes --progress --no-owner --no-group /host_folders/SYNC/Videos/ root@52.147.207.156::SYNC-Videos --dry-run