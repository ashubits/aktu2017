#bin/bash value
file="/home/pratishtha/output.txt"
while IFS=: read -r col1  col2
do 
	echo "$col1" : $val1
	echo "$col2" : $val2
done <"$file"
file="/home/pratishtha/output1.txt"
while IFS=: read -r coln1  coln2
do 
	echo "$coln1" : $valu1
	echo "$coln2" : $valu2
done <"$file"
#check file name 
if [ "$val1" eq "$valu1" ]; then
{
	if [ "$val2" == "$valu2" ]; then
	echo "Different file"
	printf '%s\n' "$coln2,$coln1"
	fi
}
fi
