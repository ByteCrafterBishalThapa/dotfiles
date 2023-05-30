#!/bin/bash

j_directory_path=$(echo ${1} | awk -F '/' -v OFS='/' '{$NF=""; print $0}')
j_file=$(echo ${1} | awk -F '/' '{print $NF}' | sed 's/.java//')
script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Compile 
output=$(javac -cp ".:${j_directory_path}/*" ${1} 2>&1) 

# Run if compiled
if [ $? -eq 0 ]; then
  output=$(java -cp ".:${j_directory_path}/" ${j_file} 2>&1)
fi

escaped_output=$(printf "%s" "$output" | sed 's/"/\\"/g')
osascript -e "tell application \"Quicksilver\" to show large type \"$escaped_output\""

