#!/usr/bin/python

import sys
import fileinput
from decimal import Decimal
#from operator import itemgetter
# maps words to their counts
word2count = {}
word3count = {}
total = 1
t = 0
divide=0

with open("sample.txt") as f:
 for line in f: # open file on read mode
  line= line.strip()
  opcode ,value = line.split("\t") # create a list containing all lines
  word3count[opcode]=value

# input comes from STDIN
for line in fileinput.input():
    # remove leading and trailing whitespace
    line = line.strip()
    # parse the input we got from mapper.py
    word, count = line.split('\t')
    # convert count (currently a string) to int
    try:
	count = float(count)
    except ValueError:
	continue
    
    try:
	word2count[word] = word2count[word]+count;
    except:
	word2count[word] = count;
        
for sample in word3count.keys():
 for word in word2count.keys():
  if sample+'-'+'mean'==word:
     mean=word2count[word]
     #print word,word2count[word]
     break
 for word in word2count.keys():
  if sample+'-'+'deviation'==word:
     deviation=word2count[word]
     #print word, word2count[word]
     break
 #print word3count[sample]
 if mean!=0:
  #print "mean=",mean
  #print "deviation=",deviation
 # Define the value of e=2.71
  e=Decimal(2.71) 
 # print "E=",e
 
 # b = (2*3.14*deviation) to the power 1/2 mean square root
  b=(2*Decimal(3.14)*Decimal(deviation))**Decimal(0.5)
 # print "b=",b
 # c = 1 / b from above -----(1)
  c=1/Decimal(b)
 # print "c=",c
# Split the formula in to parts so that i understand all calculation here a=(opcode - mean)
  a= Decimal(word3count[sample])-Decimal(mean)
 # print "a=",a
 # d = (opcode - mean) to the power 2
  d=Decimal(a**2)
 # print "d=",d
 # f= 2 * deviation
  f=2*Decimal(deviation)
 # print "f=",f
# g= ((opcode-mean) to the power 2) divided by (2* deviation)
  g=d/Decimal(f)
 # print "g=",g
# h= e to the power g (explain above)------(2)
  h=e**Decimal(g)
 # print "h=",h
 # at last i= c divided by h from equation (1) & (2) 
  i=c/Decimal(h)
 # print "i=",i
  total=total*Decimal(i)
 # print "total=",total

#probability=

PN=Decimal(0.5)*Decimal(total)

print "posterior-numerator(probability) of a sample is:=", PN



