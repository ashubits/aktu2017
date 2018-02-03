ps
ps -f -u root | grep 'p[1-9]' | sort -nr | head -n 5 | awk '{print $2}'
ps -f -u vishal | grep 'temp[1-5]' | sort -n 2 | awk '{print $2}'
var1 = 'tail-2 o.txt | head-1'
var2 = 'tail-1 o.txt | head-1'
kill -9 "$var1"

