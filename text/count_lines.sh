#!/bin/bash

# count_lines.sh

# Count the number of lines in the file 

# Check if the filename is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: line_counter.sh <filename>"
    exit 1
fi

filename=$1

# Check if the file exists
if [ ! -f $filename ]; then
    echo "$filename does not exist or is not a file"
    exit 1
fi
# Count the number of characters in the file using wc command
num_lines=$(wc -l < $filename)
echo "The file '$filename' has $num_lines lines."

exit 0

