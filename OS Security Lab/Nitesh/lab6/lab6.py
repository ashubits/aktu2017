import os

for root, dirs, files in os.walk("."):  
    for filename in files:
        os.system("aapt dump permissions "+filename)
