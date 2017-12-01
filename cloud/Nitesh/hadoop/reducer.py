#!/usr/bin/python

import sys
import fileinput

#from operator import itemgetter

# maps words to their counts
word2count = {}
total = 0
t = 0
with open('opcodeList.txt') as f:
    a = sum(1 for _ in f)
    f.close() # close file

fp = open('opcodeList.txt') # open file on read mode
opcode = fp.read().split("\n") # create a list containing all lines
fp.close() # close file

# input comes from STDIN
for line in fileinput.input():
    # remove leading and trailing whitespace
    line = line.strip()
    # parse the input we got from mapper.py
    word, count = line.split('\t', 1)
    # convert count (currently a string) to int
    try:
	count = int(count)
    except ValueError:
	continue
    
    try:
	word2count[word] = word2count[word]+count;
    except:
	word2count[word] = count;
"""
# sorted_word2count = sorted(word2count.items(),key=itemgetter(0))
# write the tuples to stdout
# Note: they are unsorted
# for word,count in sorted_word2count:
#     print '%s\t%s'% (word, count)
#for i in range(100):
#for word in word2count.keys():
   #if opcode[i] == word:
      #t = 1
      #break
 
 #if t == 1:
  #t = 0
   # print "%s\t%s" %(word, word2count[word])
 #else:     
  #print "%s\t%s" %(opcode[i] , 0)

#for word in word2count.keys():     
  # total = total + word2count[word]

#mean = total/float(a)
#print "mean", mean 

#for word in word2count.keys():
 #   total1= (word2count[word]-mean)**2

#deviation = total1/float(a)
#print "deviation=", deviation 
"""
for word in word2count.keys():
  print "%s\t%s" %(word, word2count[word])
"""
  filename = word.split('-')
  for w in filename:
   for i in range(100):
    if opcode[i] == w:
     t = 1
     break
   if t==1:
    t=0
    print "%s\t%s" %(w, word2count[word])
   else: 
    print "%s\t%s" %(w,word2count[word])

"""
