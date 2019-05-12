from pyhive import hive
import numpy as py
from datetime import datetime, timedelta, date
#N = 0
#date_N_days_ago = datetime.now() - timedelta(days=N)
#print (date_N_days_ago)
conn = hive.Connection(host="localhost", port="10000", username="root")
cursor = conn.cursor()
cursor.execute("SELECT * FROM test1")
import pandas as pd
df = pd.read_sql("SELECT * FROM test1", conn)
#print(df)
df.to_csv("/home/cloudera/Desktop/thingdatadlk.csv", sep=',')
#lastdayfrom = pd.to_datetime('today')
lastdayfrom = datetime.now()

print(lastdayfrom)
print(lastdayfrom.date())
g=lastdayfrom.date()
df['test1.timething'] = pd.to_datetime(df['test1.timething'])
df = df.set_index('test1.timething')
#if datetimeindex isn't order, order it
df= df.sort_index()
N = 3
e= pd.DataFrame({
    	'date':[],
    	'temp':[]
	})
n= pd.DataFrame({
    	'date':[],
    	'hum':[]
	})
o= pd.DataFrame({
    	'date':[],
    	'moist':[]
	})
s= pd.DataFrame({
    	'date':[],
    	'atm':[]
	})
while N>-1: 
	date_N_days_ago = datetime.now() - timedelta(days=N)
	date_N_days_ago1 = datetime.now() - timedelta(days=N-1)
	#print (date_N_days_ago)
	g=date_N_days_ago.date()
	f=date_N_days_ago1.date()
	#last 30 days of date lastday
	#d = df.loc[lastdayfrom - pd.Timedelta(days=1):lastdayfrom].reset_index()
	#f = df.loc[g-pd.Timedelta(days=1):g].reset_index()
	#f = pd.date_range(g, periods=100000, freq='1D')
	#f = df.loc[date_N_days_ago- pd.Timedelta(days=1):date_N_days_ago].reset_index()
	f=df.loc[g:f].reset_index()
	print(g)
	print(f)
	f['test1.temp'] = pd.to_numeric(f['test1.temp'])
	c=f["test1.temp"].mean()
	print(c)
	x= pd.DataFrame({
    	'date':[g],
    	'temp':[c]
	})
	e=e.append(x,ignore_index=True)
	print(e)
	f['test1.hum'] = pd.to_numeric(f['test1.hum'])
	h=f["test1.hum"].mean()
	print(c)
	y= pd.DataFrame({
    	'date':[g],
    	'hum':[h]
	})
	n=n.append(y,ignore_index=True)
	f['test1.moist'] = pd.to_numeric(f['test1.moist'])
	m=f["test1.moist"].mean()
	r= pd.DataFrame({
    	'date':[g],
    	'moist':[m]
	})
	o=o.append(r,ignore_index=True)
	f['test1.atm'] = pd.to_numeric(f['test1.atm'])	
	a=f["test1.atm"].mean()
	print(a)
	q= pd.DataFrame({
    	'date':[g],
    	'atm':[a]
	})
	s=s.append(q,ignore_index=True)
	N=N-1

import matplotlib.pyplot as plt
z=e.plot(kind='bar',x='date',y='temp',color='g')
plt.xticks(rotation=0)
plt.savefig('f01.png')
#plt.show()
l=n.plot(kind='bar',x='date',y='hum',color='b')
plt.xticks(rotation=0)
plt.savefig('f02.png')
i=o.plot(kind='bar',x='date',y='moist',color='r')
plt.xticks(rotation=0)
plt.savefig('f03.png')
p=s.plot(kind='bar',x='date',y='atm',color='y')
plt.xticks(rotation=0)
plt.savefig('f04.png')

from fpdf import FPDF
 
def add_image(image_path):
    pdf = FPDF()
    pdf.add_page()
    pdf.image(image_path, x=10, y=50, w=200)
    pdf.set_font("Arial", size=20)
    pdf.ln(5)  # move 85 down
    pdf.cell(200, 10, txt="Report of the last 4 days", ln=1)
    pdf.ln(15)  # move 85 down
    pdf.cell(200, 10, txt="Temperature of the last 4 days", ln=1)
    pdf.set_font("Arial", size=20)
    pdf.ln(345)  # move 85 down
    pdf.cell(200, 10, txt="Humidity of the last 4 days", ln=1)
    pdf.image('/home/cloudera/f02.png', x=10, y=50, w=200)
    pdf.set_font("Arial", size=20)
    pdf.ln(675)  # move 85 down
    pdf.cell(200, 10, txt="Soil Moisture of the last 4 days", ln=1)
    pdf.image('/home/cloudera/f03.png', x=10, y=50, w=200)
    pdf.set_font("Arial", size=20)
    pdf.ln(1005)  # move 85 down
    pdf.cell(200, 10, txt="Atmospheric Pressure of the last 4 days", ln=1)
    pdf.image('/home/cloudera/f04.png', x=10, y=50, w=200)
    pdf.output("/home/cloudera/add_image.pdf")
 
if __name__ == '__main__':
    add_image('/home/cloudera/f01.png')

import smtplib 
from email.mime.multipart import MIMEMultipart 
from email.mime.text import MIMEText 
from email.mime.base import MIMEBase 
from email import encoders 
   
fromaddr = "raghavendhar1371997007@gmail.com"
toaddr = "raghavendhar1371997007@gmail.com"
   
# instance of MIMEMultipart 
msg = MIMEMultipart() 
  
# storing the senders email address   
msg['From'] = fromaddr 
  
# storing the receivers email address  
msg['To'] = toaddr 
  
# storing the subject  
msg['Subject'] = "Subject of the Mail"
  
# string to store the body of the mail 
body = "Body_of_the_mail"
  
# attach the body with the msg instance 
msg.attach(MIMEText(body, 'plain')) 
  
# open the file to be sent  
filename = "add_image.pdf"
attachment = open("/home/cloudera/add_image.pdf", "rb") 
  
# instance of MIMEBase and named as p 
p = MIMEBase('application', 'octet-stream') 
  
# To change the payload into encoded form 
p.set_payload((attachment).read()) 
  
# encode into base64 
encoders.encode_base64(p) 
   
p.add_header('Content-Disposition', "attachment; filename= %s" % filename) 
  
# attach the instance 'p' to instance 'msg' 
msg.attach(p) 
  
# creates SMTP session 
s = smtplib.SMTP('smtp.gmail.com', 587) 
  
# start TLS for security 
s.starttls() 
  
# Authentication 
s.login(fromaddr, "Abirami@137") 
  
# Converts the Multipart msg into a string 
text = msg.as_string() 
  
# sending the mail 
s.sendmail(fromaddr, toaddr, text) 
  
# terminating the session 
s.quit() 
