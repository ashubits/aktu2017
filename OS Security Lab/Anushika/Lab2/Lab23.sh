
var1 = 'tail -2 output.txt | head -1'
var2 = 'tail -1 output.txt | head -1'

kill -9 "$var1"

kill -9 "$var2"
