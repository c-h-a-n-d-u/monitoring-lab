#!/usr/bin/python3

import sys

comb = sys.argv[1:]
port = [3316,1080,9100,3736,1180]
ans = ['' for i in range(5)]
for i in range(5):
    for j in comb:
        if j.find(':'+str(port[i])) != -1:
            ans[i] = j.split(',')[-1].split('/')[-1]
            break
cont = ['database','petclinic','prometheus','grafana','wordpress']
bind = []
for i in ans: 
    if i == 'docker-proxy': bind.append('OK')
    elif i == '': bind.append('Connection Lost')
    else: bind.append('Bind Error')
# print(bind)
output = 'Containers,Port,Status\n'

for i,j,k in zip(cont,port,bind):
    output += i+','+str(j)+','+k+'\n'
print(output)
