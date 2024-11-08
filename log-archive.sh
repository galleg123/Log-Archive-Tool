#!/bin/bash


if [ $# -lt 1 ]; then
    echo "You need to provide a log directory as an argument"
    exit 1
fi

DATE=$(date +%d%m%y-%H_%M_%S)
FOLDER=logs_archive_$DATE
TARNAME="$FOLDER.tar.gz"

mv $1 $FOLDER
mkdir $1
tar -zcvf ./logs-archives/$TARNAME $FOLDER
rm -rf $FOLDER
echo "Compressed logfolder $1 into archive $TARNAME"
