
./a1 &
./a2 &
./a3 &
./a4 &
./a5 &
./a6 &
./a7 &
./a8 &
./a9 &
./a10 &


ps | grep a
#ps aux | sort -nrk 3,3 | head -n 5
#ps --sort=-pcpu | head -n 6
#ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
#ps -eo pid,%mem --sort=-%mem |head
#ps -eo pid --sort=-pid|head -n 6
#ps -o pid --sort=-pcpu | head -6
#ps -o pid,%cpu --sort=-%cpu | head -6
#ps -o pid --sort=-%cpu | head -6
ps |grep a |sort -nr |head -n 5 | awk '{print $1}'
ps -f -u temp |grep temp |sort -nr | head -n 5 |awk '{print $2}'
kill -9 $(ps |grep a |sort -nr |head -n 2 | awk '{print $1}'
