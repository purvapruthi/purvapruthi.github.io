#!/bin/sh

#  Script.sh
#  Papers4 Installer
#


SERVICE_E='Papers.app'
SERVICE_3='Papers\ 3'
if [ -d "/Applications/Papers.app" ]
then
    if grep --quiet "Papers 3.0" "/Applications/Papers.app/Contents/Info.plist";
    then
        echo "legacy"
    elif grep --quiet "com.ReadCube.Papers" "/Applications/Papers.app/Contents/Info.plist";
    then
        echo "electron"
    fi
else
    echo "none"
fi
