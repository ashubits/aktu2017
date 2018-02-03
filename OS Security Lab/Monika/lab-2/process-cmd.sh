
./m1 &
./m2 &
./m3 &
./m4 &
./m5 &
./m6 &
./m7 &
./m8 &
./m9 &
./m10 &


ps | grep m
#ps aux | sort -nrk 3,3 | head -n 5
#ps --sort=-pcpu | head -n 6
#ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
#ps -eo pid,%mem --sort=-%mem |head
#ps -eo pid --sort=-pid|head -n 6
#ps -o pid --sort=-pcpu | head -6
#ps -o pid,%cpu --sort=-%cpu | head -6
#ps -o pid --sort=-%cpu | head -6
ps |grep 'm[1-10]' |sort -nr |head -n 5 | awk '{print $1}'
ps -f -u temp |grep temp |sort -nr | head -n 5 |awk '{print $2}'
kill -9 $(ps |grep 'm[1-10]' |sort -nr |head -n 2 | awk '{print $1}'
