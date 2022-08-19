#!/bin/bash
source /home/grads/hackathon3/monitoring-lab/env-setup;
cd /home/grads/hackathon3/monitoring-lab/containers;
#/usr/local/bin/docker-compose ps;
BUILD_NUMBER=6 /usr/local/bin/docker-compose up -d $(/usr/bin/docker ps -a | /usr/bin/grep Exit | /usr/bin/awk '{print $NF}')
