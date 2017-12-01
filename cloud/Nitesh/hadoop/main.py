#!/usr/bin/python

import sys
import fileinput
#from operator import itemgetter

# maps words to their counts
word2count = {}
word3count = {}
total = 0
t = 0
divide=0

fp = open('opcodeList.txt') # open file on read mode
opcode = fp.read().split("\n") # create a list containing all lines
fp.close() # close file
"""
for line in fileinput.input():
    # remove leading and trailing whitespace
    line = line.strip()
    # parse the input we got from mapper.py
    word, count = line.split('\t')


    # convert count (currently a string) to int
    try:
	count = int(count)
    except ValueError:
	continue
    
    try:
	word4count[word] = word4count[word]+count;
        
    except:
	word4count[word] = count;
        
for i in range(100):
 for word in word4count.keys():

    if opcode[i] == word:
       t = 1
       break
 
 if t == 1:
  t = 0
  print "%s\t%s" %(word, word4count[word])
  mean = word4count[word]/float(1)
  print "mean = ", mean
 else:     
  print "%s\t%s" %(opcode[i] , 0)
  mean = 0/float(1)
  print "mean = ", mean
 for lines in fileinput.input():
        lines = lines.strip()
        w, c =lines.split('\t')
        try:
	 c = int(c)
        except ValueError:
	 continue
        if w == word:
         try:
	  word3count[w] = word3count[w]+c;
	  total = total+(c-mean)**2
          
         except:
	  word3count[w] = c;
	  total = total+(c-mean)**2
 print "deviation=", total/float(1)
 total=0
"""

# input comes from STDIN
for line in fileinput.input():
    # remove leading and trailing whitespace
    line = line.strip()
    # parse the input we got from mapper.py
    word, count = line.split('\t')
    # convert count (currently a string) to int
    try:
	count = int(count)
    except ValueError:
	continue
    
    try:
	word2count[word] = word2count[word]+count;
    except:
	word2count[word] = count;
for word in word2count.keys():
  #print "%s\t%s" %(word, word2count[word])
  for i in range(100):
     if opcode[i]==word:
        var=1
        break
  if var==1:
     var=0 
     
  else:
     divide=divide+1
     #print word

#print "Number-of-files=",divide
"""
for word in word2count.keys():
 for i in range(100):
      if opcode[i]==word:
        v=1
        break
 if v==1:
    v=0 
    #print "%s:" %(word)
    mean = word2count[word]/float(divide)
    c = word+'-'+'mean'
    print "%s\t%s" %(c, mean)
    

 

"""
for word in word2count.keys():
  for i in range(100):
      if opcode[i]==word:
        v=1
        break
  if v==1:
    v=0 
    #print "%s:" %(word)
    mean = word2count[word]/float(divide)
    c = word+'-'+'mean'
    print "%s\t%s" %(c, mean)
    for lines in fileinput.input():
        lines = lines.strip()
        w, c =lines.split('\t')
        try:
	 c = int(c)
        except ValueError:
	 continue
        if w == word:
         try:
	  word3count[w] = word3count[w]+c;
	  total = total+(c-mean)**2
         except:
	  word3count[w] = c;
	  total = total+(c-mean)**2
    ch = word +'-'+'deviation'
    print "%s\t%s" %(ch, total/float(divide))
    total=0
