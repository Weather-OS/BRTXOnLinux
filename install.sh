#!/bin/bash

SodaURL="https://github.com/bottlesdevs/wine/releases/download/soda-7.0-9/soda-7.0-9-x86_64.tar.xz"
SodaDir="$PWD/wine"
LOG="$PWD/install.log"

FetchSoda() {
    echo "Fetching soda-7.0.9..."
    mkdir $SodaDir
    /usr/bin/wget $SodaURL -O "${SodaDir}/soda.tar.xz" >/dev/null &> $LOG 
}


FetchSoda