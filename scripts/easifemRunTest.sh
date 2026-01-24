#!/bin/bash
FILE="$1"
DIR=$(dirname "$FILE")
FILENAME=$(basename "$FILE")
# ORIGINAL_DIR=$(pwd)

(
  cd "$DIR" || exit 1

  # Check if run.toml exists
  if [ ! -f "runner.toml" ]; then
    echo "Error: runner.toml not found in $DIR"
    exit 1
  fi

  easifem run "$FILENAME" -q

)

# cd "$ORIGINAL_DIR"
