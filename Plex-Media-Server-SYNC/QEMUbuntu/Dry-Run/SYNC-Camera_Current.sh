#!/bin/bash

rsync "/host_folders/SYNC/Camera_Current/" -avu --itemize-changes --progress --no-owner --no-group -e "ssh -T -o Compression=no -x" root@142.11.195.157:/media/Plex/Camera_Current/ --dry-run
