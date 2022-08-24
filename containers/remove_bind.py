#!/usr/bin/python3

import sys

comb = sys.argv[1:]
port = [3316,1080,9090,3000,1180]
ans = ['' for i in range(5)]
proc = [0 for i in range(5)]

for i in range(5):
    for j in comb:
        if j.find(':'+str(port[i])) != -1:
            ans[i] = j.split(',')[-1].split('/')[-1]
            proc[i] = j.split(',')[-1].split('/')[0]
            break
cont = ['database','petclinic','prometheus','grafana','wordpress']
bind = []
for i in ans: 
    if i == 'docker-proxy': bind.append('OK')
    elif i == '': bind.append('Connection Lost')
    else: bind.append('Bind Error')
output = ''

for i,j,k in zip(cont,proc,bind):
    if k == 'Bind Error':
        output += i+','+j+','+k+'\n'
print(output)
