import sys
import os
import fileinput

c=0

with open('output-benign.txt') as f:
    content = f.readlines()

with open('output-malware.txt') as f1:
    content1 = f1.readlines()


for word in content1:
    for w in content:
       if word==w:
          c=1
    if c==1:
       c=0
    else:
       print word

# https://elinux.org/Android_aapt

