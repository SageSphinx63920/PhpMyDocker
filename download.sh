#!/bin/bash

# Define the target directory
target_dir="./data/web"

# Create the directory if it doesn't exist
if [ ! -d "$target_dir" ]; then
  mkdir -p "$target_dir"
fi

# Download the latest version of phpMyAdmin using curl and save it as a tar file
curl -o "$target_dir/phpmyadmin.tar.gz" -L https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz

# Unpack the archive in the target directory
tar -xzf "$target_dir/phpmyadmin.tar.gz" -C "$target_dir" --strip-components=1

# Delete the archive
rm "$target_dir/phpmyadmin.tar.gz"
