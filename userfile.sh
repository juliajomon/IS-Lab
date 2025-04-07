#!/bin/bash

# Check if filename is given
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

# File with usernames
USER_FILE="$1"

# Check if file exists
if [ ! -f "$USER_FILE" ]; then
  echo "File not found: $USER_FILE"
  exit 1
fi

# Loop through each line (username) in the file
while IFS= read -r username || [ -n "$username" ]; do
  if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
  else
    useradd "$username"
    echo "User '$username' created."
  fi
done < "$USER_FILE"
