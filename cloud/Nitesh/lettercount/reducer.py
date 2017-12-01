#!/usr/bin/python

import sys

#from operator import itemgetter

# maps words to their counts
word2count = {}

# input comes from STDIN
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()
    # parse the input we got from mapper.py

    word, count = line[0:1], 1
    # convert count (currently a string) to int
    try:
	count = int(count)
    except ValueError:
	continue
    
    try:
	word2count[word] = word2count[word]+count;
    except:
	word2count[word] = count;

# sorted_word2count = sorted(word2count.items(),key=itemgetter(0))
# write the tuples to stdout
# Note: they are unsorted
# for word,count in sorted_word2count:
#     print '%s\t%s'% (word, count)

for word in word2count.keys():
    print '%s\t%s'% (word, word2count[word] )



