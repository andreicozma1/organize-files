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


PATH_ARCHIVE="$PATH_ROOT/archives"
mkdir -pv "$PATH_ARCHIVE"
echo "# Base Path: $PATH_ARCHIVE"

##############################################################
$PATH_MOVE_SCRIPT "*.zip" "$PATH_ARCHIVE"
$PATH_MOVE_SCRIPT "*.ZIP" "$PATH_ARCHIVE"
$PATH_MOVE_SCRIPT "*.tar*" "$PATH_ARCHIVE"
$PATH_MOVE_SCRIPT "*.tgz" "$PATH_ARCHIVE"
$PATH_MOVE_SCRIPT "*.rar" "$PATH_ARCHIVE"
$PATH_MOVE_SCRIPT "*.iso" "$PATH_ARCHIVE"
$PATH_MOVE_SCRIPT "*.7z" "$PATH_ARCHIVE"
$PATH_MOVE_SCRIPT "*.bz2" "$PATH_ARCHIVE"
$PATH_MOVE_SCRIPT "*.gz" "$PATH_ARCHIVE"
##############################################################

echo "========================== DONE! =========================="