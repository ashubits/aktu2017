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

ps

ps -f -u anushika | grep 'p[1-9]' | sort -nr | head -n 5 | awk '{print $2}'




