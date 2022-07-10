#! /bin/bash

# Follows a path of linked links until a result is found

prev=12345

while true; do
  echo $prev

  res=$(curl -s "http://www.pythonchallenge.com/pc/def/linkedlist.php?nothing=$prev") 

  next=$(echo $res | rev | cut -d ' '  -f 1 | rev)

  if [[ $next == *"html"*  ]]; then
    echo $res
    break;
  elif ! [[ $next =~ ^[0-9]+$ ]]; then
    echo $res
    prev=$(($prev/2))
  else
    prev=$next
  fi

done
