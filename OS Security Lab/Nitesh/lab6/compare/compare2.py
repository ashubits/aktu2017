import sys
import os
import fileinput
import glob

c=0

with open('3-newfile2.txt') as f:
    content = f.readlines()
os.chdir("malware")

for file in glob.glob("*.txt"):
    with open(file) as f1:
         content1=f1.readlines()
    
    for word in content1:
      for w in content:
         if word==w:
            c=1
    if c==1:
       c=0
    else:
       print file
         


