#!/bin/bash

rsync "/host_folders/SYNC/Movies/" -av --append-verify --progress --no-owner --no-group -e "ssh -T -o Compression=no -x" root@142.11.195.157:/media/Plex/Movies/
