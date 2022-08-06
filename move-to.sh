#!/bin/bash

PATTERN="$1"
TARGET_PATH="$2"

# Check if both $PATTERN and $TARGET_PATH are set
if [ -z "$PATTERN" ] || [ -z "$TARGET_PATH" ]; then
    echo "Usage: `basename $0` [pattern] [target-path]"
    exit 0
fi

echo "-------------------------------------------------"
mkdir -pv "$TARGET_PATH"
echo "# Moving $PATTERN => $TARGET_PATH"
mv -iv $PATTERN "$TARGET_PATH"

# Recursively look for all files matching pattern and move them to target path
# find . -type f -name "$PATTERN" -exec mv -iv {} "$TARGET_PATH" \;

RETURN_CODE=$?
# echo "Return code: $RETURN_CODE"
if [ $RETURN_CODE -eq 1 ]; then
    echo "SKIPPED: No files found matching $PATTERN"
fi
