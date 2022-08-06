#!/bin/bash

PATH_BIN="$1"

if [ -z "$PATH_BIN" ]; then
    echo "Usage: $0 [bin directory]"
    exit 0
fi

ln -sv "$PWD/move-to.sh" "$PATH_BIN/move-to"
ln -sv "$PWD/organize-all.sh" "$PATH_BIN/organize-all"
ln -sv "$PWD/organize-archives.sh" "$PATH_BIN/organize-archives"
ln -sv "$PWD/organize-code.sh" "$PATH_BIN/organize-code"
ln -sv "$PWD/organize-data.sh" "$PATH_BIN/organize-data"
ln -sv "$PWD/organize-docs.sh" "$PATH_BIN/organize-docs"
ln -sv "$PWD/organize-media.sh" "$PATH_BIN/organize-media"
ln -sv "$PWD/organize-software.sh" "$PATH_BIN/organize-software"
ln -sv "$PWD/organize-text.sh" "$PATH_BIN/organize-text"