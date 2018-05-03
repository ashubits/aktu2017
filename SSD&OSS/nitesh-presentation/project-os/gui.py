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
top.title('OS Security')
top.geometry('1350x600')
top.configure(background='Teal',highlightthickness=10,highlightbackground="white")
top.resizable(0,0)

def Username():
 tkMessageBox.showinfo("Username","username="+commands.getoutput('whoami'))

def show():
 ls=commands.getoutput('echo ' + textbox.get()+'| sudo -S ls')
 systemhash=commands.getoutput('echo ' + textbox.get()+ '| sudo -S grep '+textbox1.get("1.0","end-1c")+ ''' /etc/shadow | awk -F'$' '{print $4}' | awk -F: '{print $1}' ''')
 tkMessageBox.showinfo("systemhash",systemhash)
 output=commands.getoutput('echo ' + textbox.get()+ '''| sudo -S awk -F[:$] '$1==''' '"'+ textbox1.get("1.0","end-1c")+ '"' '''{print "$" $3 "$" $4 "$"}' /etc/shadow''')
 #print output
 string=crypt.crypt(textbox.get(), output)
 hash=string.replace(output,"")
 tkMessageBox.showinfo("HASH",hash)
 #print hash

 if systemhash==hash:
  tkMessageBox.showinfo("Match Password","Password Matches")
  textbox.pack_forget()
  B12.pack_forget()
  B8.pack_forget()	
  l.pack_forget()
  l1.pack_forget()
  l2.pack_forget()
  l3.pack_forget()
  textbox1.pack_forget()
  def About():
   window = Tkinter.Toplevel(top)
   window.title('**About tool**')
   p = subprocess.Popen("cat about.txt", stdout=subprocess.PIPE, shell=True)
   (output, err) = p.communicate()
   text = Tkinter.Text(window,width=100)
   text.pack()
   text.insert(Tkinter.END, output)

  B13 = Tkinter.Button(top, text ="About",command = About,padx = 20,fg='green',font='Arial 10 bold')
  B13.pack(pady = 10, padx = 20)
  frame1 = Tkinter.Frame(top,bg='maroon',highlightthickness=8,highlightbackground="white")
  frame1.pack(pady=70)
  frame2 = Tkinter.Frame(frame1,bg='maroon')
  frame2.pack(side = Tkinter.LEFT,pady=20)
  frame3 = Tkinter.Frame(frame1,bg='maroon')
  frame3.pack(side = Tkinter.RIGHT,pady=20)

  def ipprotocol():
   window = Tkinter.Toplevel(top)
   window.title('IP-Protocol Scan Result')
   p = subprocess.Popen("echo " + textbox.get()+"" "| sudo -S nmap -sO localhost" , stdout=subprocess.PIPE, shell=True)
   (output, err) = p.communicate()
   text = Tkinter.Text(window)
   text.pack()
   text.insert(Tkinter.END, output)

  def udp():
   window = Tkinter.Toplevel(top)
   window.title('UDP-Protocol Scan Result')
   p = subprocess.Popen("echo " + textbox.get()+"" "|sudo -S nmap -sU localhost", stdout=subprocess.PIPE, shell=True)
   (output, err) = p.communicate()
   text = Tkinter.Text(window)
   text.pack()
   text.insert(Tkinter.END, output)

  def arpscan():
   window = Tkinter.Toplevel(top)
   window.title('ARP-Protocol Scan Result')
   p = subprocess.Popen("echo " + textbox.get()+"" "|sudo -S arp-scan -l", stdout=subprocess.PIPE, shell=True)
   (output, err) = p.communicate()
   text = Tkinter.Text(window)
   text.pack()
   text.insert(Tkinter.END, output)

  def rpc():
   window = Tkinter.Toplevel(top)
   window.title('RPC-Protocol Scan Result')
   p = subprocess.Popen("echo " + textbox.get()+"" "|sudo -S nmap -sR localhost", stdout=subprocess.PIPE, shell=True)
   (output, err) = p.communicate()
   text = Tkinter.Text(window)
   text.pack()
   text.insert(Tkinter.END, output)

  def tcp():
   window = Tkinter.Toplevel(top)
   window.title('TCP-Protocol Scan Result')
   p = subprocess.Popen("echo " + textbox.get()+"" "|sudo -S nmap -sS localhost", stdout=subprocess.PIPE, shell=True)
   (output, err) = p.communicate()
   text = Tkinter.Text(window)
   text.pack()
   text.insert(Tkinter.END, output)

  def osdetection():
   window = Tkinter.Toplevel(top)
   window.title('Operating-System detection Result')
   p = subprocess.Popen("echo " + textbox.get()+"" "|sudo -S nmap -O localhost", stdout=subprocess.PIPE, shell=True)
   (output, err) = p.communicate()
   text = Tkinter.Text(window)
   text.pack()
   text.insert(Tkinter.END, output)
   #tkMessageBox.showinfo( "Hello Python", "Hello World")
  def firewall():
   os.system('python firewall.py')
 
  def Bruteforce():
   os.system('python bruteforce.py')
  
  def userstatus():
   window = Tkinter.Toplevel(top)
   window.title('current status of a user account')
   p = subprocess.Popen("echo " + textbox.get()+"" "|sudo chage -l "+textbox1.get("1.0","end-1c"), stdout=subprocess.PIPE, shell=True)
   (output, err) = p.communicate()
   text = Tkinter.Text(window)
   text.pack()
   text.insert(Tkinter.END, output)
   #tkMessageBox.showinfo("information",commands.getoutput('sudo chage -l '+textbox1.get("1.0","end-1c")))
  
  def logout():
   B12.pack(pady=10,padx=20)
   l3.pack()
   l.pack()	
   l1.pack()
   textbox1.pack(pady=20,padx=20)
   textbox.delete(0,'end')
   textbox1.delete("1.0","end-1c")
   l2.pack()
   textbox.pack(pady=20,padx=20)
   B8.pack(pady = 20, padx = 20)   
   #panel.pack_forget()
   B.pack_forget()
   B1.pack_forget()
   B4.pack_forget()
   B2.pack_forget()	
   B3.pack_forget()
   B6.pack_forget()
   B5.pack_forget()
   B9.pack_forget()
   B10.pack_forget()
   frame1.pack_forget()
   frame2.pack_forget()
   frame3.pack_forget()
   B11.pack_forget()
   B13.pack_forget()

  
  B9= Tkinter.Button(frame1, text ="logout",height=2,width=9,command = logout,font='Arial 10 bold')
  B9.pack(pady = 20, padx = 20)
  B4 = Tkinter.Button(frame2, text ="Scan alive hosts on a network",height=2,width=23,font='Arial 10 bold',command = arpscan,padx = 20,fg='red')
  B = Tkinter.Button(frame2, text ="Operating System detection",height=2,width=23,font='Arial 10 bold',command = osdetection,padx = 20,fg='red')
  B1 = Tkinter.Button(frame2, text ="Scan for UDP-Port",height=2,width=23,font='Arial 10 bold',command = udp,padx = 20,fg='green')
  B10= Tkinter.Button(frame2, text ="Start Brute force Attack",height=2,width=23,font='Arial 10 bold',command = Bruteforce,padx = 20,fg='green')
  B.pack(pady = 10, padx = 20)
  B1.pack(pady = 10, padx = 20)
  B4.pack(pady = 10, padx = 20)
  B10.pack(pady= 10, padx=20)
  B11= Tkinter.Button(frame2, text ="current status of user-account",height=2,width=23,font='Arial 10 bold',command = userstatus,padx = 20,fg='green')
  B11.pack(pady= 10, padx=20)

  B5 = Tkinter.Button(frame3, text ="Scan for RPC",height=2,width=19,font='Arial 10 bold', command = rpc,padx = 20,fg='red')
  B2 = Tkinter.Button(frame3, text ="Scan for tcp-Port",height=2,width=19,font='Arial 10 bold', command = tcp,padx = 20,fg='red')
  B3 = Tkinter.Button(frame3, text ="Scan for IP-Protocol",height=2,width=19,font='Arial 10 bold', command = ipprotocol,padx = 20,fg='green')
  B2.pack(pady = 10, padx = 20)
  B3.pack(pady = 10, padx = 20)
  B5.pack(pady = 10, padx = 20)
  B6 = Tkinter.Button(frame3, text ="Check status of firewall",height=2,width=19,command = firewall,padx = 20,fg='green',font='Arial 10 bold')
  B6.pack(pady = 10, padx = 20)

  top.mainloop()
 else:
  tkMessageBox.showinfo("Password Error", "Password is incorrect") 


img1 = ImageTk.PhotoImage(Image.open("logo1.png"))
panel1 = Tkinter.Label(top, image = img1,height=300,width=600,bg='Teal')
panel1.pack(side = Tkinter.LEFT)

B12 = Tkinter.Button(top, text ="check your Username",command = Username,padx = 20,fg='green',font='Arial 10 bold')
B12.pack(pady = 10, padx = 20)
l3=Tkinter.Label(top,text="Password is same as your account Password",fg='white',bg='Teal',height=3,font='Arial 10 bold')
l3.pack()
l=Tkinter.Label(top,text="Enter your Device Password for sudo authentication",fg='white',bg='Teal',height=3,font='Arial 15 bold')
l.pack() 
l1=Tkinter.Label(top,text="Username:",fg='white',bg='Teal',font='Arial 15 bold')
l1.pack()
textbox1=Tkinter.Text(top,height=1,width=25,font='Arial 15 bold')
textbox1.pack(pady=20,padx=20)
l2=Tkinter.Label(top,text="Password:",fg='white',bg='Teal',font='Arial 15 bold')
l2.pack()
textbox=Tkinter.Entry(top,font='Arial 15 bold')
textbox.config(show='*')
textbox.pack(pady=20,padx=20)
B8 = Tkinter.Button(top, text ="Login!",command = show,padx = 20,fg='green',font='Arial 15 bold')
B8.pack(pady = 20, padx = 20) 
top.mainloop()
