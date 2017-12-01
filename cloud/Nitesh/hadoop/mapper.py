#!/usr/bin/python

import sys
import os
import fileinput

#--get all lines from stdin ---
fp = open('opcodeList.txt') # open file on read mode
opcode = fp.read().split("\n") # create a list containing all lines
fp.close() # close file
c=0
# Read pairs as lines of input from STDIN
for line in fileinput.input():
    #-- remove leading and trailling whitespace--
    line = line.strip()
    

    #--split two lines into words
    words = line.split()
    #output tuples [word,1] in tab-delimited format
    
    for word in words:
        for i in range(100):
           if word == opcode[i]:
              word =  fileinput.filename()+"-"+word              
      	      print '%s\t%s' %(word, "1")

for j in range(100):
 for line in fileinput.input():
        line=line.strip()
        words=line.split()
        for word in words:
            if word==opcode[j]:
               c=1
 if c==1:
    c=0
 else:
    char = fileinput.filename()+"-"+opcode[j]
    print '%s\t%s' %(char, "0")


