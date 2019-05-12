import os
import time
from pyhive import hive

from subprocess import call

conn = hive.Connection(host="localhost", port="10000", username="root")
cursor = conn.cursor()
c=0
try:
    	cmd = "sqoop job --exec incrementalImportJob7 -- --username root --password cloudera  "
    	a=os.system(cmd)
except:
    	print("Unexpected error:", sys.exc_info()[0])


cursor.execute("INSERT OVERWRITE TABLE test2 SELECT *, ROW_NUMBER()OVER(PARTITION BY id ORDER BY id , time desc)AS RowNumber FROM test1")
cursor.execute("INSERT OVERWRITE TABLE test2 select * from test2 where RowNumber=1 order by timething")
print("0");	   
cursor.execute("insert overwrite table test1 select timething,id,temp,hum,moist,atm,time from test2 order by timething")
call(["python","/home/cloudera/Desktop/auto2.py"])
time.sleep(1)
	

