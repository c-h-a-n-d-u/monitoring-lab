#!/bin/bash
/usr/bin/docker ps -a | /usr/bin/grep Exit | /usr/bin/awk 'BEGIN{print "CONTAINERS,NAMES"}{print $NF","$NF}'
