#!/bin/bash

#Change Permissions on all user folders so they are able to be accessed by current user

cygstart --action=runas takeown /f "J:\PortableApps\MobaXterm" /a /r /d y && cygstart --action=runas icacls "J:\PortableApps\MobaXterm" /grant "Users:F" /Q /C && cygstart --action=runas icacls "J:\PortableApps\MobaXterm" /reset /T /C /Q