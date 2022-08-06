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



PATH_CODE="$PATH_ROOT/code"
mkdir -pv "$PATH_CODE"
echo "# Base Path: $PATH_CODE"

##############################################################
$PATH_MOVE_SCRIPT "*.py" "$PATH_CODE/python"
$PATH_MOVE_SCRIPT "*.ipynb" "$PATH_CODE/python"

$PATH_MOVE_SCRIPT "*.c" "$PATH_CODE/c_cpp"
$PATH_MOVE_SCRIPT "*.cpp" "$PATH_CODE/c_cpp"
$PATH_MOVE_SCRIPT "*.h" "$PATH_CODE/c_cpp"

$PATH_MOVE_SCRIPT "*.so" "$PATH_CODE/lib"

$PATH_MOVE_SCRIPT "*.java" "$PATH_CODE/java"
$PATH_MOVE_SCRIPT "*.class" "$PATH_CODE/java"
$PATH_MOVE_SCRIPT "*.jar" "$PATH_CODE/java"

$PATH_MOVE_SCRIPT "*.js" "$PATH_CODE/js"
$PATH_MOVE_SCRIPT "*.jsx" "$PATH_CODE/js"
$PATH_MOVE_SCRIPT "*.ts" "$PATH_CODE/ts"
$PATH_MOVE_SCRIPT "*.tsx" "$PATH_CODE/ts"

$PATH_MOVE_SCRIPT "*.sh" "$PATH_CODE/sh"

##############################################################

echo "========================== DONE! =========================="
