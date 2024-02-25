#!/bin/bash

# nixify.sh

# Check if a directory path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Get the provided directory path from the command line argument
dir_path=$1

# List all files with the ".sh" extension in the directory, ignoring subdirectories
echo "Files with '.sh' extension in $dir_path:"
find "$dir_path" -maxdepth 1 -type f -name '*.sh' -print

# Prompt the user for confirmation to convert each file
read -p "Do you want to convert these files to UNIX format? (y/n) " confirm
if [ $confirm = "y" ]; then
    echo "Converting files to DOS format..."
    # Convert each file with the ".sh" extension to UNIX format and list them
    find "$dir_path" -maxdepth 1 -type f -name '*.sh' -exec dos2unix {} \;
else
    echo "No files were converted."
fi
