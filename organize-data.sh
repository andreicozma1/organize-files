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



PATH_DATA="$PATH_ROOT/data"
mkdir -pv "$PATH_DATA"
echo "# Base Path: $PATH_DATA"

##############################################################
$PATH_MOVE_SCRIPT "*.csv" "$PATH_DATA/csv"
$PATH_MOVE_SCRIPT "*.json" "$PATH_DATA/json"
$PATH_MOVE_SCRIPT "*.xml" "$PATH_DATA/xml"
$PATH_MOVE_SCRIPT "*.yaml" "$PATH_DATA/yaml"
$PATH_MOVE_SCRIPT "*.yml" "$PATH_DATA/yml"
$PATH_MOVE_SCRIPT "*.ini" "$PATH_DATA/ini"
$PATH_MOVE_SCRIPT "*.conf" "$PATH_DATA/conf"
$PATH_MOVE_SCRIPT "*.properties" "$PATH_DATA/properties"
$PATH_MOVE_SCRIPT "*.cfg" "$PATH_DATA/cfg"
$PATH_MOVE_SCRIPT "*.conf" "$PATH_DATA/conf"
$PATH_MOVE_SCRIPT "*.config" "$PATH_DATA/config"
##############################################################

echo "========================== DONE! =========================="
