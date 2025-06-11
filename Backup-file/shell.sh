#!/usr/bin/bash
#step-1:Specify the source and destination
echo "Give me source directory name for backup"
read src_dir
echo "Give me destination directory name for backup"
read des_dir

# Create a timestamp for the backup file
timestamp=$(date +%Y%m%d%H%M%S)

# Create the backup archive
tar -czf "$des_dir/backup-$timestamp.tar.gz" "$src_dir"
