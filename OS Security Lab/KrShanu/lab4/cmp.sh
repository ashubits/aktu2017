#!/bin/bash
file="/home/monika/hash1.txt"
while IFS=: read -r col1 col2
do
  echo "$col1" : $val2
  echo "$col2" : $val1
done < "$file"
file="/home/monika/hash2.txt"
while IFS=: read -r col3 col4
do
  echo "$col3" : $val4
  echo "$col4" : $val3
done < "$file"
if ["$vol2" eq "$val4"];then
  {
   if ["$col1" != "$col3"];then
    echo "Different files"
    printf '%s\n' "$col3,$col4"
    fi
  }
fi

    © 2018 GitHub, Inc.
    Terms
    Privacy
    Security
    Status
    Help

    Contact GitHub
    API
    Training
    Shop
    Blog
    About


