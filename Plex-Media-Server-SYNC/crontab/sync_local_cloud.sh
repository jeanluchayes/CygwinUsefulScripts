#!/bin/bash

rsync -avz --exclude={'.stfolder','.stversions'} "/media/Plex_local/Camera_Current/" "/media/Plex-cloud/Camera_Current"
rsync -avz --exclude={'.stfolder','.stversions'} "/media/Plex_local/Camera_Phone/" "/media/Plex-cloud/Camera_Phone"
rsync -avz --exclude={'.stfolder','.stversions'} "/media/Plex_local/Music/" "/media/Plex-cloud/Music"
rsync -avz --exclude={'.stfolder','.stversions'} "/media/Plex_local/Pictures/" "/media/Plex-cloud/Pictures"
rsync -avz --exclude={'.stfolder','.stversions'} "/media/Plex_local/Videos/" "/media/Plex-cloud/Videos"
rsync -avz --exclude={'.stfolder','.stversions'} "/media/Plex_local/Movies/" "/media/Plex-cloud/Movies"
rsync -avz --exclude={'.stfolder','.stversions'} "/media/Plex_local/TV_Shows/" "/media/Plex-cloud/TV_Shows"
rsync -avz --exclude={'.stfolder','.stversions'} "/media/Plex_local/Reactions/" "/media/Plex-cloud/Reactions"