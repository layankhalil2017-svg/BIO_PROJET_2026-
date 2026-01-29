#!/bin/bash

# check number of arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <source_path> <target_path>"
  exit 1
fi

SOURCE=$1
TARGET=$2

# check source exists
if [ ! -f "$SOURCE" ]; then
  echo "Error: source file does not exist"
  exit 1
fi

# create target directory if needed
TARGET_DIR=$(dirname "$TARGET")
mkdir -p "$TARGET_DIR"

# copy file with new name
cp "$SOURCE" "$TARGET"

echo "Copy created:"
echo "Source: $SOURCE"
echo "Target: $TARGET"
