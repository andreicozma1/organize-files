#!/bin/bash

PATTERN="$3"
TARGET_PATH="$2"

# Check if both $PATTERN and $TARGET_PATH are set
if [ -z "$PATTERN" ] || [ -z "$TARGET_PATH" ]; then
    echo "Usage: `basename $0` [pattern] [target-path]"
    exit 0
fi

echo "-------------------------------------------------------"
mkdir -pv "$TARGET_PATH"
echo "# Moving $PATTERN => $TARGET_PATH"
mv -iv $PATTERN "$TARGET_PATH"