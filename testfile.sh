 #!/bin/bash
 hash_file="file_hashes.txt" 
 
generate_hashes() { 
    > "$hash_file" 
    for file in *; do 
        if [[ -f "$file" ]]; then 
            sha256sum "$file" >> "$hash_file" 
        fi 
    done 
    echo "Hashes generated and saved to $hash_file" 
}
 check_integrity() { 
    if [[ ! -f "$hash_file" ]]; then 
        echo "$hash_file not found. Run with --generate first." 
        exit 1 
    fi 
    sha256sum -c "$hash_file" 
} 
 
case "$1" in 
    --generate) 
        generate_hashes 
        ;; 
    --check) 
        check_integrity 
        ;; 
    *) 
        echo "Usage: $0 --generate | --check" 
        exit 1 
        ;; 
esac   