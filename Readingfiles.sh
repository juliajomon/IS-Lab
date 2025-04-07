#!/bin/bash

echo "Enter the directory path:"
read dir

if [ -d "$dir" ]; then
    echo "Reading all .txt files in $dir..."
    for file in "$dir"/*.txt; do
        [ -e "$file" ] || continue  # Skip if no matching files
        echo "------- $file -------"
        cat "$file"
        echo ""
    done
else
    echo "Directory does not exist."
fi

#read and display single file

#!/bin/bash

echo "Enter the filename:"
read filename

if [ -f "$filename" ]; then
    echo "Contents of $filename:"
    cat "$filename"
else
    echo "File does not exist."
fi
