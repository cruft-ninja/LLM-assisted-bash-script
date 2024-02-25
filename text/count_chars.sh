#!/bin/bash

# count_chars.sh

# Count the number of characters in the file 

# Check if the filename is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

FILENAME="$1"

# Check if the file exists
if [ ! -f "$FILENAME" ]; then
  echo "Error: File does not exist."
  exit 1
fi

# Count the number of characters in the file using wc command
CHAR_COUNT=$(wc -m < "$FILENAME")

echo "File '$FILENAME' has $CHAR_COUNT character(s)."

exit 0

