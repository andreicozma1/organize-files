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



PATH_TEXT="$PATH_ROOT/text"
mkdir -pv "$PATH_TEXT"
echo "# Base Path: $PATH_TEXT"

##############################################################
$PATH_MOVE_SCRIPT "*.md" "$PATH_TEXT/md"
$PATH_MOVE_SCRIPT "*.txt" "$PATH_TEXT/txt"
##############################################################

echo "========================== DONE! =========================="
