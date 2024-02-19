#!/bin/bash

# Check if enough arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <source_directory> <new_name>"
    exit 1
fi

# Get the arguments
source_directory="$1"
new_name="$2"
destination_directory=$(pwd)

# Check if the source directory exists
if [ ! -d "$source_directory" ]; then
    echo "The source directory '$source_directory' does not exist."
    exit 1
fi

# Check if the destination directory already exists
if [ -d "$new_name" ]; then
    echo "The directory '$new_name' already exists."
    exit 1
fi

# Create the destination directory
mkdir "$new_name" || exit 1

# Copy only image files, .tex, and .bib files
find "$source_directory" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.tex" -o -iname "*.bib" \) -exec cp {} "$new_name" \;

# Check if the copying was successful
if [ $? -eq 0 ]; then
    echo "Files have been successfully copied to the directory $(realpath $new_name)."
else
    echo "An error occurred while copying the files."
fi
