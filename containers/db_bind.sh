#!/bin/bash
source /home/grads/hackathon3/monitoring-lab/env-setup;
cd /home/grads/hackathon3/monitoring-lab/containers;

/usr/bin/sudo /usr/bin/kill $(/usr/bin/sudo /usr/bin/netstat -tlnp | /usr/bin/egrep '[0-9]+:3316' | /usr/bin/awk '{print $NF}' | /usr/bin/egrep -o [0-9]+); /usr/local/bin/docker-compose up -d database;




