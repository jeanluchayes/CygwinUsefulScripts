#!/usr/bin/python

import subprocess
import os

proc = subprocess.Popen(['./get_drive_letter.sh'],stdout=subprocess.PIPE)
line = proc.stdout.readline()
if line:
	print(line.rstrip())
	exit()
else:
	exit()


# def get_drive_letter(proc):
# 	while True:
# 		line = proc.stdout.readline()
# 		if not line:
# 			break
# 		print line.rstrip()
# 		return line.rstrip()

# get_drive_letter(proc)