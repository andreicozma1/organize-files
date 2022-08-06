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



PATH_MEDIA="$PATH_ROOT/media"
mkdir -pv "$PATH_MEDIA"
echo "# Base Path: $PATH_MEDIA"

##############################################################
$PATH_MOVE_SCRIPT "*.webm" "$PATH_MEDIA/video"
$PATH_MOVE_SCRIPT "*.avi" "$PATH_MEDIA/video"
$PATH_MOVE_SCRIPT "*.mp4" "$PATH_MEDIA/video"
$PATH_MOVE_SCRIPT "*.mkv" "$PATH_MEDIA/video"

$PATH_MOVE_SCRIPT "*.mp3" "$PATH_MEDIA/audio"
$PATH_MOVE_SCRIPT "*.wav" "$PATH_MEDIA/audio"
$PATH_MOVE_SCRIPT "*.flac" "$PATH_MEDIA/audio"
$PATH_MOVE_SCRIPT "*.ogg" "$PATH_MEDIA/audio"

$PATH_MOVE_SCRIPT "*.png" "$PATH_MEDIA/image"
$PATH_MOVE_SCRIPT "*.jpg" "$PATH_MEDIA/image"
$PATH_MOVE_SCRIPT "*.jpeg" "$PATH_MEDIA/image"
$PATH_MOVE_SCRIPT "*.HEIC" "$PATH_MEDIA/image"
$PATH_MOVE_SCRIPT "*.gif" "$PATH_MEDIA/image"
##############################################################

echo "========================== DONE! =========================="

