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
from distutils.util import strtobool
from PIL import ImageTk,Image

top = Tkinter.Tk()
top.title('firewall setup')
top.geometry('1320x550')
top.configure(background='Teal',highlightthickness=7,highlightbackground="white")
top.resizable(0,0)

frame3 = Tkinter.Frame(top,bg='maroon',highlightthickness=5)
frame3.pack(side = Tkinter.RIGHT,pady=20,padx=20)

frame4 = Tkinter.Frame(frame3,bg='maroon')
frame4.pack(side = Tkinter.LEFT,pady=20,padx=20)

frame5 = Tkinter.Frame(frame3,bg='maroon')
frame5.pack(side = Tkinter.RIGHT,pady=20,padx=20)

frame2 = Tkinter.Frame(top,bg='Teal',highlightthickness=3,highlightbackground="white")
frame2.pack(side = Tkinter.TOP,pady=10,padx=60)

def enable():
 os.system('sudo service ufw start')	
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw enable'))


def disable(): 
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw disable'))

def status(): 
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw status')) 

def Reload():
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw reload'))

def Numbered():
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw status numbered'))

def verbose():
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw status verbose'))  	

def Policies():
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw default deny incoming'))
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw default allow outgoing'))  	

def Allow():
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw allow '+textbox.get("1.0","end-1c")))

def deny():
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw deny '+textbox1.get("1.0","end-1c")))

def Read():
 im= Image.open('secure-insecure.png')
 Image._show(im)
 tkMessageBox.showinfo("information",commands.getoutput('sudo cat PORT.txt'))
 
def delete():
 tkMessageBox.showinfo("information",commands.getoutput('sudo ufw delete allow ' +textbox2.get("1.0","end-1c")))

l2=Tkinter.Label(frame2,text="Notice UFW is typically installed by default in Ubuntu\nBut if anything,you can install-it",bg='Teal',fg='black',font='Arial 10 bold')
l2.pack()
l3=Tkinter.Label(frame2,text="'sudo apt-get install ufw'",fg='black',bg='Teal',font='Arial 11 bold')
l3.pack()
B9 = Tkinter.Button(frame2, text ="Read about port and service of firewall",font='Arial 12 bold',command=Read, height=1,width=30,padx = 20,fg='black')
B9.pack(pady = 10, padx = 20)
B = Tkinter.Button(frame4, text ="Enable firewall",font='Arial 12 bold',command=enable, height=1,width=12,padx = 20,fg='black')
B.pack(pady = 10, padx = 20)
B1 = Tkinter.Button(frame4, text ="Disable firewall",font='Arial 12 bold',command=disable, height=1,width=12,padx = 20,fg='black')
B1.pack(pady = 10, padx = 20)
B2 = Tkinter.Button(frame4, text ="Reload firewall",font='Arial 12 bold',command=Reload, height=1,width=12,padx = 20,fg='black')
B2.pack(pady = 10, padx = 20)
B3 = Tkinter.Button(frame4, text ="Check status",font='Arial 12 bold',command=status, height=1,width=12,padx = 20,fg='black')
B3.pack(pady = 10, padx = 20)
B4 = Tkinter.Button(frame4, text ="Check-status Numbered",font='Arial 12 bold',command=Numbered, height=1,width=18,padx = 20,fg='black')
B4.pack(pady = 10, padx = 20)
B5 = Tkinter.Button(frame4, text ="Check status Verbose",font='Arial 12 bold',command=verbose, height=1,width=16,padx = 20,fg='black')
B5.pack(pady = 10, padx = 20)
B6 = Tkinter.Button(frame4, text ="Set Up Default Policies",font='Arial 12 bold',command=Policies, height=1,width=18,padx = 20,fg='black')
B6.pack(pady = 10, padx = 20)

l4=Tkinter.Label(frame5,text="Allow Connections(add rules):",bg='maroon',fg='white',font='Arial 10 bold')
l4.pack()
l6=Tkinter.Label(frame5,text="enter port or service:",bg='maroon',fg='white',font='Arial 10 bold')
l6.pack()
textbox=Tkinter.Text(frame5,height=1.2,width=16,font='Arial 12 bold')
textbox.pack()
B7 = Tkinter.Button(frame5, text ="Allow",font='Arial 12 bold',command=Allow, height=1,width=18,padx = 20,fg='black')
B7.pack(pady = 10, padx = 20)

l5=Tkinter.Label(frame5,text="Deny Connections:",bg='maroon',fg='white',font='Arial 10 bold')
l5.pack()
l7=Tkinter.Label(frame5,text="enter port or service:",bg='maroon',fg='white',font='Arial 10 bold')
l7.pack()
textbox1=Tkinter.Text(frame5,height=1.2,width=16,font='Arial 12 bold')
textbox1.pack()
B8 = Tkinter.Button(frame5, text ="Deny",font='Arial 12 bold',command=deny, height=1,width=18,padx = 20,fg='black')
B8.pack(pady = 10, padx = 20)

l9=Tkinter.Label(frame5,text="Delete rules:",bg='maroon',fg='white',font='Arial 10 bold')
l9.pack()
l8=Tkinter.Label(frame5,text="enter port or service:",bg='maroon',fg='white',font='Arial 10 bold')
l8.pack()
textbox2=Tkinter.Text(frame5,height=1.2,width=16,font='Arial 12 bold')
textbox2.pack()
B10 = Tkinter.Button(frame5, text ="Delete",font='Arial 12 bold',command=delete, height=1,width=18,padx = 20,fg='black')
B10.pack(pady = 10, padx = 20)

img1 = ImageTk.PhotoImage(Image.open("logo1.png"))
panel1 = Tkinter.Label(top, image = img1,bg='Teal')
panel1.pack(side = Tkinter.LEFT)

top.mainloop()