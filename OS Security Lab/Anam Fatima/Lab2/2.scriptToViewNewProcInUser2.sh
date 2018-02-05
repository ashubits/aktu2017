ps -f -u hadoop|grep 'temp[1-9]'|sort -nr|head -n2|awk '{print $2}'
