#!/bin/bash

echo "You need to enter either t or j. "

choice=""

while [[ "$choice" != "t" && "$choice" != "T" && "$choice" != "j" && "$choice" != "J" ]]
do
	read -p "Press t for .txt or j for .jpg: " choice
done
if [[ "$choice" == "t" || "$choice" == "T" ]]
then
filetype=".txt";
else
filetype=".jpg"
fi 
read -p "Please enter the prefix to add to filename : " prefix
timestamp=$(date +%Y%m%d_%H%M%S)
for file in *"$filetype"
do
mv "$file" "${timestamp}_${prefix}${file}"
done




