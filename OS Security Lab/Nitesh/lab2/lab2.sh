./n1 &
./n2 &
./n3 &
./n4 &
./n5 &
./n6 &
./n7 &
./n8 &
./n9 &
./n10 &

ps | grep n

#ps -o user,pid | sort -k 1 -nr | head -6
#ps -o user,pid |sort -k 1 -nr | head -5
#ps -f -u oem --sort=-%cpu |head -n 6 | awk '{print $2}'
#ps -eo pid,%mem --sort=-%mem |head -n 6
#ps -o pid --sort=-pcpu |head -n 6 
#ps -o pid --sort=-pcpu | grep n | head -n 6
ps |grep n |sort -nr |head -n 5 | awk '{print $1}'
ps -f -u temp |grep temp | sort -nr | head -n 5 | awk '{print $2}'

#watch "ps aux | sort -nrk 3,3 | head -n 5" '{print 2}'
#ps aux | awk '{print $4"\t"$11}' | sort | uniq -c | awk '{print $2" "$1" "$3}' | sort -nr 

kill -9 $(ps |grep n |sort -nr |head -n 2 | awk '{print $1}')
