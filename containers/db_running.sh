#!bin/sh
cd /home/grads/hackathon3/monitoring-lab/containers/;
source ../env-setup; 
/usr/local/bin/docker-compose ps | /usr/bin/grep -v Exit | /usr/bin/awk '{print $1","$1}'
