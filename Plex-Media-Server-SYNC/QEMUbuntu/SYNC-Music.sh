#!/bin/bash

rsync "/host_folders/SYNC/Music/" -av --append-verify --progress --no-owner --no-group -e "ssh -T -o Compression=no -x" root@52.147.207.156:/media/Plex/Music/
