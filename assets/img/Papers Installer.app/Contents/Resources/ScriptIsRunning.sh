#!/bin/sh

#  Script.sh
#  Papers4 Installer
#

SERVICE_E='Papers.app'
SERVICE_3='Papers.app'
SERVICE_C='Citations.app'

if [ -d "/Applications/Papers.app" ]
then
    if grep --quiet "Papers 3.0" "/Applications/Papers.app/Contents/Info.plist";
    then
        if ps ax | grep -v grep | grep "${SERVICE_C}" &> /dev/null; then
            echo "yesc3"
        else
            if ps ax | grep -v grep | grep "${SERVICE_3}" &> /dev/null; then
                echo "yesp3"
            else
                echo "no"
            fi
        fi
    elif grep --quiet "com.ReadCube.Papers" "/Applications/Papers.app/Contents/Info.plist";
    then
        if ps ax | grep -v grep | grep "${SERVICE_E}" &> /dev/null; then
            echo "yesel"
        else
            echo "no"
        fi
    fi
fi
