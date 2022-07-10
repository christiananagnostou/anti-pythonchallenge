#! /bin/bash

prev=90052
iteration=0

while true; do
  ((iteration=iteration+1))
  if [ $(($iteration%65)) -eq 0 ]; then echo; fi

  next=$(cat "./channel/$prev.txt" | rev | cut -d ' ' -f 1 | rev)

  if ! [[ "$next" =~ ^[0-9]+$ ]]; then
    echo
    break
  fi

  line=$(zipnote "channel.zip" | grep -n "@ $next.txt" | cut -d: -f 1)
  zipnote "channel.zip" | sed -n "$(($line+1))p" | tr -d '\n'

  prev=$next
done
