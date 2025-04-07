#!/bin/bash

echo "Enter the directory to search in:"
read search_dir

echo "Enter the filename or pattern to search (e.g., myfile.txt or *.log):"
read pattern

# Check if directory exists
if [ ! -d "$search_dir" ]; then
    echo "Directory does not exist."
    exit 1
fi

echo "Searching for '$pattern' in '$search_dir'..."
find "$search_dir" -type f -name "$pattern"
