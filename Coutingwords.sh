#!/bin/bash

echo "Enter the filename:"
read filename

# Check if file exists
if [ -f "$filename" ]; then
    lines=$(wc -l < "$filename")
    words=$(wc -w < "$filename")
    echo "File: $filename"
    echo "Number of lines: $lines"
    echo "Number of words: $words"
else
    echo "File does not exist."
fi
