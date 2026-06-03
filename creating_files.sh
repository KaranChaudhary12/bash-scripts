#!/bin/bash

echo "Script to create multiple Files. "

i=1
while [ $i -le 5 ]
do
touch file"$i".txt file"$i".jpg
((i++))
done

