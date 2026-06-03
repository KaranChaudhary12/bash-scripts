#!/bin/bash

LOGFILE="rename.log"

echo "Choose an option:"
echo "1) Rename files"
echo "2) Rollback last rename"
read -p "Enter choice (1 or 2): " mode

# ---------------- ROLLBACK MODE ----------------
if [ "$mode" == "2" ]; then
    if [ ! -f "$LOGFILE" ]; then
        echo "No rollback log found."
        exit 1
    fi

    echo "Rolling back changes..."
    while IFS="|" read -r old new
    do
        if [ -f "$new" ]; then
            mv "$new" "$old"
        fi
    done < "$LOGFILE"

    echo "Rollback completed."
    exit 0
fi

# ---------------- RENAME MODE ----------------
choice=""

while [[ "$choice" != "t" && "$choice" != "T" && "$choice" != "j" && "$choice" != "J" ]]
do
    read -p "Press t for .txt or j for .jpg: " choice
done

if [[ "$choice" == "t" || "$choice" == "T" ]]; then
    filetype=".txt"
else
    filetype=".jpg"
fi

read -p "Enter prefix to add to filenames: " prefix

timestamp=$(date +%Y%m%d_%H%M%S)

# Clear / create log file
> "$LOGFILE"

shopt -s nullglob

for file in *"$filetype"
do
    newname="${timestamp}_${prefix}${file}"
    mv "$file" "$newname"
    echo "$file|$newname" >> "$LOGFILE"
done

shopt -u nullglob

echo "Renaming completed."
echo "Rollback log saved in $LOGFILE"
