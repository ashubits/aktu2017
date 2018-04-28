#1/bin/bash
file="/home/ubuntu/t1.txt"
while IFS=: read -r col1 col2
do
        echo "$col1" : $val2
        echo "$col2" : $val1
        # display $line
done <"$file"
file="/home/ubantu/t2.txt"
while IFS=: read -r coln1 coln2
do
        echo "$coln1" : $valu2
        echo "$coln2" : $valu1
done <"$file"
#if statement to check file name
if [ "$vol1" eq "$valu|1" ]; then {
        if [ "$coln2" != "$col2" ]; then
        echo "different files"
        printf '%s\n' "$coln2,$col2"
        fi
}
fi
