#!/bin/bash
set -eu

mins=$1
message=${2:-Time out!}
sleep $(($mins * 60))

if [[ $(uname) == 'Darwin' ]]; then
 osascript -e 'tell app "System Events" to display alert "'"$message"'" message "Your timer of '"$mins"' min is over"' 
else
 notify-send -t 0 "${message}" "Your timer of $mins min is over" -u normal
fi

