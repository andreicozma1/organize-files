#!/bin/bash

PATH_ROOT="$1"
PATH_MOVE_SCRIPT="move-to"
if ! [ -x "$(command -v $PATH_MOVE_SCRIPT)" ]; then
	PATH_MOVE_SCRIPT="./move-to.sh"
fi

if [ -z "$PATH_ROOT" ]; then
	PATH_ROOT="$PWD"
fi

echo "========================================================"
echo "# Organizing archive files..."
echo "========================================================"

echo "# Creating directories..."

PATH_DOCS="$PATH_ROOT/docs"
mkdir -pv "$PATH_DOCS"
echo "# Base Path: $PATH_DOCS"

##############################################################
$PATH_MOVE_SCRIPT "*.pdf" "$PATH_DOCS/pdf"

$PATH_MOVE_SCRIPT "*.doc" "$PATH_DOCS/doc"
$PATH_MOVE_SCRIPT "*.docx" "$PATH_DOCS/doc"

$PATH_MOVE_SCRIPT "*.xlsx" "$PATH_DOCS/xls"
$PATH_MOVE_SCRIPT "*.xls" "$PATH_DOCS/xls"

$PATH_MOVE_SCRIPT "*.ppt" "$PATH_DOCS/ppt"
$PATH_MOVE_SCRIPT "*.pptx" "$PATH_DOCS/ppt"

$PATH_MOVE_SCRIPT "*.stl" "$PATH_DOCS/stl"

##############################################################

echo "======================== DONE! ========================"
