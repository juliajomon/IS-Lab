#!/bin/bash

echo "Enter the filename:"
read filename

if [ ! -f "$filename" ]; then
    echo "File does not exist."
    exit 1
fi

echo "Enter the word to search:"
read word

echo "Searching for '$word' in '$filename'..."

# Search and highlight the word
grep --color=always -n "$word" "$filename"

# Count number of occurrences
count=$(grep -o "$word" "$filename" | wc -l)
echo "Total occurrences: $count"
