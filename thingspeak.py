import sys
import time
import urllib2
import urllib
import csv
from subprocess import call
#import requests
import mysql.connector
baseURL = 'https://api.thingspeak.com/channels/665237/feeds.csv?timezone=Asia/Kolkata'
g = urllib2.urlopen(baseURL)
#print(g)
cr = g.read()
print(cr);
#d=type(cr)
#print(d)
with open('thingspeak.csv', 'w') as fx: # str, hence mode 'w'
    fx.write(cr)
mydb = mysql.connector.connect(host='localhost',
    user='root',
    passwd='cloudera',
    db='test')
cursor = mydb.cursor()
csv_data =csv.reader(file('thingspeak.csv'))
for row in csv_data:
    cursor.execute('INSERT INTO test1(timething,id,temp,hum,moist,atm) VALUES ("%s","%s","%s","%s","%s","%s")',row)
    sql1 = "Update test1 set timething=replace(timething,'''',''),id=replace(id,'''',''),temp=replace(temp,'''',''),hum=replace(hum,'''',''),moist=replace(moist,'''',''),atm=replace(atm,'''','')"
    cursor.execute(sql1)
    sql = "DELETE FROM test1 WHERE id = 'entry'"
    cursor.execute(sql)
    sql7 = "truncate test2"
    cursor.execute(sql7)
    sql2 = "insert into test2 select * from test1 group by id order by timething"
    cursor.execute(sql2)
    sql3 = "truncate test1"
    cursor.execute(sql3)
    sql4 = "insert into test1 select * from test2 order by timething"
    cursor.execute(sql4)

mydb.commit()
cursor.close()
print "Done"
time.sleep(20)
call(["python","/home/cloudera/Desktop/thing.py"])




