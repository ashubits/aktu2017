#!/usr/bin/python

import sys

#--get all lines from stdin ---
for line in sys.stdin:
    #-- remove leading and trailling whitespace--
    line = line.strip()

    #--split two lines into words
    words = line.split()

    #output tuples [word,1] in tab-delimited format
    for word in words:
        print '%s\t%s' %(word, "1")
