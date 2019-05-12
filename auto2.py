import time
import mysql.connector
import commands
from subprocess import call

mydb = mysql.connector.connect(host="localhost",user="root",passwd="cloudera",database="test")
mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM test1")
z=2

myresult = mycursor.fetchall()
#print(type(myresult))
mycursor.execute("SELECT * FROM test3")
myresult1 = mycursor.fetchall()

if(myresult==myresult1):
	z=0
	mydb.close()
	print(z)
	time.sleep(10)
	call(["python","/home/cloudera/Desktop/auto2.py"])
else:
	z=1
	print(z)
	try:
		mycursor.execute("truncate test3;")
		mycursor.execute("insert into test3 select * from test1;")
		mydb.close()
		time.sleep(10)
		call(["python3.6","/home/cloudera/Desktop/raghav2.py"])

	except:
    		print("Unexpected error:", sys.exc_info()[0])
	


