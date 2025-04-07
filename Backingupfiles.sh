#!/bin/bash

echo "Enter the source directory:"
read src

echo "Enter the backup destination directory:"
read dest

# Check if source directory exists
if [ ! -d "$src" ]; then
    echo "Source directory does not exist."
    exit 1
fi

# Create destination directory if it doesn't exist
mkdir -p "$dest"

# Create a timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_folder="$dest/backup_$timestamp"

# Copy files to backup folder
mkdir "$backup_folder"
cp -r "$src"/* "$backup_folder"

echo "Backup completed successfully at $backup_folder"
