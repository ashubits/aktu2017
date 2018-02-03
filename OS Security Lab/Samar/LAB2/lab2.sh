./s1 &
./s2 &
./s3 &
./s4 &
./s5 &
./s6 &
./s7 &
./s8 &
./s9 &
./s10 &

ps |grep 's[1-10]' |sort -nr |head -n 5 | awk '{print $1}'
ps -f -u temp |grep temp | sort -nr | head -n 5 | awk '{print $2}'

kill -9 $(ps |grep 's[1-10]' |sort -nr |head -n 2 | awk '{print $1}')
