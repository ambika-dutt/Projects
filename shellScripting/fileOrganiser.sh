#!/usr/bin/bash

# step-1
echo "Enter the path"
read src_dir

#step-2
find $src_dir -iname "*.jpg" -exec mv -t "$src_dir/images/" {} +
find $src_dir -iname "*.txt" -exec mv -t "$src_dir/textfile/" {} +

