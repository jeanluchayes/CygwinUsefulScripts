#!/bin/bash

rsync "/host_folders/SYNC/Videos/" -av --append-verify --progress --no-owner --no-group -e "ssh -T -o Compression=no -x" root@52.147.207.156:/media/Plex/Videos/

#rsync "/host_folders/SYNC/Videos/" -avz --itemize-changes --progress --no-owner --no-group root@52.147.207.156::SYNC-Videos/
