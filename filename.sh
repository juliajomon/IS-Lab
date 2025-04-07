 #!/bin/bash 
dir="." 
count=1 
echo "S.No | Filename | Creation Date" 
echo "---------------------------------" 
for file in "$dir"/*; do 
        if [[ -f "$file" ]]; then 
                creation_date=$(stat -c %y "$file" | cut -d' ' -f1) 
                echo "$count | $(basename "$file") | $creation_date" 
                ((count++)) 
        fi 
done