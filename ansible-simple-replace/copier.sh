#!/bin/bash

# Destination directory
dest_dir="/another/place"

# Define an array of source files with each file on a new line
read -d '' -r -a src_files <<EOF
/path/to/file1
/path/to/file2
/path/to/file3
EOF

# Iterate through the array of source files
for src_file in "${src_files[@]}"; do
    # Create the full destination path by concatenating dest_dir and the source file's path
    full_dest_path="$dest_dir$(dirname $src_file)"

    # Create the destination directory (if it doesn't exist)
    mkdir -p "$full_dest_path"

    # Copy the source file to the full destination path
    cp "$src_file" "$full_dest_path"

    echo "File copied to: $full_dest_path"
done

