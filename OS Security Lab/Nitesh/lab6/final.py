import sys
import os
import fileinput

bad_words = ['permission']

with open('output.txt') as oldfile, open('newfile1.txt', 'w') as newfile:
    for line in oldfile:
        if any(bad_word in line for bad_word in bad_words):
            newfile.write(line)

