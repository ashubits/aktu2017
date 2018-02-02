ps -f -u hadoop | grep 'temp[1-5]' |sort -nr | head -n 2 | awk '{print $2}'
