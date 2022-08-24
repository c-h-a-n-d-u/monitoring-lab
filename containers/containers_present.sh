#!/bin/bash
/usr/bin/docker ps -a| /usr/bin/tail -n +2 |/usr/bin/grep Up|/usr/bin/awk 'BEGIN{print "CONTAINERS,NAME"}{print $NF","$NF}'
