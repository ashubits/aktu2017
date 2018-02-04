
./p1 &
./p2 &
./p3 &
./p4 &
./p5 &
./p6 &
./p7 &
./p8 &
./p9 &
./p10 &


ps | grep p
#ps aux | sort -nrk 3,3 | head -n 5
#ps --sort=-pcpu | head -n 6
#ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
#ps -eo pid,%mem --sort=-%mem |head
#ps -eo pid --sort=-pid|head -n 6
#ps -o pid --sort=-pcpu | head -6
#ps -o pid,%cpu --sort=-%cpu | head -6
#ps -o pid --sort=-%cpu | head -6
ps |grep p |sort -nr |head -n 5 | awk '{print $1}'
ps -f -u temp |grep temp |sort -nr | head -n 5 |awk '{print $2}'
kill -9 $(ps |grep p |sort -nr |head -n 2 | awk '{print $1}'
