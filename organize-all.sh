#!/bin/bash

PATH_ROOT="$1"

if [ -z "$PATH_ROOT" ]; then
	PATH_ROOT="$PWD"
fi

echo "================================================================="
echo "# Organize all files..."
echo "================================================================="

echo "# Base Path: $PATH_ROOT"
echo

SCRIPT_ARCHIVES="organize-archives"
if ! [ -x "$(command -v $SCRIPT_ARCHIVES)" ]; then
	SCRIPT_ARCHIVES="./organize-archives.sh"
fi
$SCRIPT_ARCHIVES "$PATH_ROOT"
echo

SCRIPT_CODE="organize-code"
if ! [ -x "$(command -v $SCRIPT_CODE)" ]; then
	SCRIPT_CODE="./organize-code.sh"
fi
$SCRIPT_CODE "$PATH_ROOT"
echo

SCRIPT_DATA="organize-data"
if ! [ -x "$(command -v $SCRIPT_DATA)" ]; then
	SCRIPT_DATA="./organize-data.sh"
fi
$SCRIPT_DATA "$PATH_ROOT"
echo

SCRIPT_DOCS="organize-docs"
if ! [ -x "$(command -v $SCRIPT_DOCS)" ]; then
	SCRIPT_DOCS="./organize-docs.sh"
fi
$SCRIPT_DOCS "$PATH_ROOT"
echo

SCRIPT_MEDIA="organize-media"
if ! [ -x "$(command -v $SCRIPT_MEDIA)" ]; then
	SCRIPT_MEDIA="./organize-media.sh"
fi
$SCRIPT_MEDIA "$PATH_ROOT"
echo

SCRIPT_SOFTWARE="organize-software"
if ! [ -x "$(command -v $SCRIPT_SOFTWARE)" ]; then
	SCRIPT_SOFTWARE="./organize-software.sh"
fi
$SCRIPT_SOFTWARE "$PATH_ROOT"
echo

SCRIPT_TEXT="organize-text"
if ! [ -x "$(command -v $SCRIPT_TEXT)" ]; then
	SCRIPT_TEXT="./organize-text.sh"
fi
$SCRIPT_TEXT "$PATH_ROOT"
echo

echo "============================= DONE! ============================="