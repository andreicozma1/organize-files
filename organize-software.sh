#!/bin/bash

PATH_ROOT="$1"
PATH_MOVE_SCRIPT="move-to"
if ! [ -x "$(command -v $PATH_MOVE_SCRIPT)" ]; then
	PATH_MOVE_SCRIPT="./move-to.sh"
fi

if [ -z "$PATH_ROOT" ]; then
	PATH_ROOT="$PWD"
fi

echo "==========================================================="
echo "# Organizing archive files..."
echo "==========================================================="

PATH_PROGRAMS="$PATH_ROOT/programs"
mkdir -pv "$PATH_PROGRAMS"
echo "# Base Path: $PATH_PROGRAMS"

##############################################################
$PATH_MOVE_SCRIPT "*.msi" "$PATH_PROGRAMS/msi"
$PATH_MOVE_SCRIPT "*.pkg" "$PATH_PROGRAMS/pkg"
$PATH_MOVE_SCRIPT "*.rpm" "$PATH_PROGRAMS/rpm"
$PATH_MOVE_SCRIPT "*.deb" "$PATH_PROGRAMS/deb"
$PATH_MOVE_SCRIPT "*.exe" "$PATH_PROGRAMS/exe"
$PATH_MOVE_SCRIPT "*.dmg" "$PATH_PROGRAMS/dmg"
$PATH_MOVE_SCRIPT "*.AppImage" "$PATH_PROGRAMS/AppImage"
##############################################################

echo "========================== DONE! =========================="
