import sys
import fileinput
import copy
import os

word2count = {}
word3count = {}
word4count = {}
t=0
with open('out.txt') as f:
    a = sum(1 for _ in f)
    f.close() # close file

with open("out.txt") as f:
 for line in f: # open file on read mode
  line= line.strip()
  hashvalue ,location = line.split('  ') # create a list containing all lines
  word3count[location]=hashvalue


# input comes from STDIN
for line in fileinput.input():
   
    line = line.strip()
   
    hashvalue1, filelocation = line.split('  ')
    
    word2count[filelocation]=hashvalue1

print "\n"

for location in word3count.keys():
 for filelocation in word2count.keys():
  if location==filelocation:
    if word3count[location]!=word2count[filelocation]:
       t=t+1
       print "Hash-Changed==%s %s" %(location, word3count[location]) 
  
print "\n"
print "Number of file changed = %s" %(t)
print "\n"

for filelocation in word2count.keys():
 check=False
 for location in word3count.keys():    
    if filelocation==location:
       check=True
       break
 if(check==False):
    print "File-Added=%s %s" %(filelocation, word2count[filelocation])  

print "\n"

for filelocation in word3count.keys():
 check=False
 for location in word2count.keys():
    if location==filelocation:
       check=True
       break
 if(check==False):
    print "File-DEleted=%s" %(word3count[filelocation])

print "\n"


for filelocation1 in word2count.keys():
 for filelocation in word2count.keys():
   if filelocation1!=filelocation:
     if word2count[filelocation1]==word2count[filelocation]:
       print "duplicate-value==%s %s" %(filelocation1,word2count[filelocation1])

print "\n"

for location in word3count.keys():
 for filelocation in word2count.keys():
    if word3count[location]==word2count[filelocation]:
       if location!=filelocation:
          print "Before-value==%s  %s" %(location,word3count[location])
          print "After-Rename==%s  %s" %(filelocation,word2count[filelocation])
          #head, tail = os.path.split(filelocation)
          #head1, tail1 = os.path.split(location)
          #print "%s %s" %(tail,tail1)
          os.rename(filelocation,location)
print "\n"





