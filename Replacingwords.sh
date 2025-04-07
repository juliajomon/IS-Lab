#!/bin/bash

echo "Enter the filename:"
read filename

if [ ! -f "$filename" ]; then
    echo "File does not exist."
    exit 1
fi

echo "Enter the word to be replaced:"
read old_word

echo "Enter the new word:"
read new_word

# Replace all occurrences (in-place)
sed -i "s/$old_word/$new_word/g" "$filename"

echo "All occurrences of '$old_word' have been replaced with '$new_word' in '$filename'."
