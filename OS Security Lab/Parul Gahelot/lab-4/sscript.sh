#!/bin/bash
file="/home/monika/hash1.txt"
while IFS=: read -r colp1 colp2
do
  echo "$colp1" : $valp2
  echo "$colp2" : $valp1
done < "$file"
file="/home/monika/hash2.txt"
while IFS=: read -r colp3 colp4
do
  echo "$colp3" : $valp4
  echo "$colp4" : $valp3
done < "$file"
if ["$volp2" eq "$valp4"];then
  {
   if ["$colp1" != "$colp3"];then
    echo "Different files"
    printf '%s\n' "$colp3,$colp4"
    fi
  }
fi
