#!/bin/bash

clear
echo "=========================================="
echo "= Easy Wii ISO .gct Cheat Embedder v1.00 ="
echo "=                                        ="
echo "=           Pack + Script by:            ="
echo "=         damysteryman/Team DARK         ="
echo "=        Updates by ppPooPoo69420        ="
echo "=                                        ="
echo "=              Powered by:               ="
echo "=      Wiimms ISO Tool v3.00a r7387      ="
echo "=      Wiimms SZS Tool v1.54a r7393      ="
echo "=                by Wiimm                ="
echo "=                                        ="
echo "=        More info in README.txt         ="
echo "=========================================="
read -p "Press [Enter] to continue..."

WITPATH="$(pwd)/wit"
SZSPATH="$(pwd)/wstrt"

if [ -z "$1" ]; then
    echo ""
    echo "Please Drag and drop your Wii .iso onto this script file in order for it to work!"
    echo ""
    exit 1
fi

GAMEID=$($WITPATH ID6 "$1")
if [ ! -f "$(pwd)/${GAMEID}.gct" ]; then
    echo ""
    echo "${GAMEID}.GCT not found!"
    echo "Please make sure your .gct file is in the 'gct' folder, and is named ${GAMEID}.GCT"
    echo ""
    exit 1
fi

FILENAME=$(basename "$1" .iso)
WORKDIR="${FILENAME}-UNPACK"

$WITPATH extract -1p "$1" --DEST "$WORKDIR" --psel data -ovv

echo ""
echo "OK, should be finished now!"
echo "Look for the file [${FILENAME} + GCT_EMBED.iso] in the same folder as this script!"
echo ""

read -p "Press [Enter] to exit..."

