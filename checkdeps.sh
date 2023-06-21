#!/bin/bash

BINDIR="/usr/bin"

ERR () {
    echo "checkdeps.sh: ${1:-"Unknown Error"}" 1>&2
    exit 1
}

Check_wget () {
    if [ ! -f "$BINDIR/wget" ]; then
        ERR "/usr/bin/wget Was not found. Have you installed 'wget'?"
    fi
}

Check_mc () {
    if [ ! -d "$PWD/mcedux64/data" ]; then
        ERR "Minecraft, Education Edition installation, not found. Make sure your installation is extracted to :${PWD}/mcedux64" 
    fi
}

Check_wget
Check_mc