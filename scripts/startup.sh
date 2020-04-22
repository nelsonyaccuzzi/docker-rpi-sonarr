#!/bin/bash

CONFIGDIR=/config
DATADIR=/data

echo "Creating directories"
mkdir -p $CONFIGDIR
mkdir -p $DATADIR

if [ ! -d $CONFIGDIR ]; then
        echo "The config directory does not exist! Please add it as a volume."
        exit 1
fi
if [ ! -d $DATADIR ]; then
        echo "The data directory does not exist! Please add it as a volume."
        exit 1
fi

echo "Starting Sonarr."
mono /usr/lib/sonarr/bin/Sonarr.exe /nobrowser /data=$CONFIGDIR
