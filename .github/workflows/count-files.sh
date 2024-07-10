#!/bin/bash

# Ensure a directory path is provided as argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

directory="$1"

# Check if the provided path is a directory
if [ ! -d "$directory" ]; then
  echo "Error: $directory is not a valid directory"
  exit 1
fi

# Count the number of files (excluding directories) in the specified directory
num_files=$(find "$directory" -maxdepth 1 -type f | wc -l)

echo "Number of files in $directory: $num_files"
