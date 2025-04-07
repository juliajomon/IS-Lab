#!/bin/bash

echo "Enter the filename:"
read filename

if [ ! -f "$filename" ]; then
    echo "File does not exist."
    exit 1
fi

echo "Choose an option:"
echo "1. Replace a word"
echo "2. Append a line"
echo "3. Convert content to uppercase"
read choice

case $choice in
    1)
        echo "Enter the word to replace:"
        read old_word
        echo "Enter the new word:"
        read new_word
        sed -i "s/$old_word/$new_word/g" "$filename"
        echo "Replaced all occurrences of '$old_word' with '$new_word'."
        ;;
    2)
        echo "Enter the line to append:"
        read new_line
        echo "$new_line" >> "$filename"
        echo "Line appended successfully."
        ;;
    3)
        echo "Converting content to uppercase..."
        tr '[:lower:]' '[:upper:]' < "$filename" > temp.txt && mv temp.txt "$filename"
        echo "Content converted to uppercase."
        ;;
    *)
        echo "Invalid option."
        ;;
esac
