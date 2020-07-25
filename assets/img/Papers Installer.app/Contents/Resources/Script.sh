#!/bin/sh

#  Script.sh
#  Papers4 Installer
#


if [ -d "/Applications/Papers.app" ]
then
    if grep --quiet "Papers 3.0" "/Applications/Papers.app/Contents/Info.plist";
    then
        echo "info - Renaming 'Papers.app' to 'Papers 3.app'"
        mv "/Applications/Papers.app" "/Applications/Papers 3 (Legacy).app"
    elif grep --quiet "com.ReadCube.Papers" "/Applications/Papers.app/Contents/Info.plist";
    then
        echo "info - Removing Previous Electron App"
        rm -rf "/Applications/Papers.app"
    else
        echo "info - Renaming older version to Papers (Legacy)"
        mv "/Applications/Papers.app" "/Applications/Papers (Legacy).app"
    fi
fi

if [ -d "/Applications/Papers Beta.app" ]
then
    echo "info - Removing Papers Beta."
    rm -rf "/Applications/Papers Beta.app"
fi

if [ -d "/Applications/ReadCube Papers Beta.app" ]
then
    echo "info - Removing ReadCube Papers Beta."
    rm -rf "/Applications/Papers Beta.app"
fi

if [ -d "/Applications/Papers.app" ]
then
    echo "error - can't remove"
    exit 1
fi

# add here command to copy!

