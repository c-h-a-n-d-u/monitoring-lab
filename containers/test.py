#!/usr/bin/python3
import sys
from datetime import datetime
if(len(sys.argv) <= 1):
	print(0) 
	exit(0)
diff = datetime.now() - datetime.strptime(sys.argv[1]+' '+sys.argv[2],'%Y-%m-%d %H:%M:%S')

print(1) if diff.seconds < 900 else print(0)
