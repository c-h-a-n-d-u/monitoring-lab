#!/usr/bin/sh
/usr/bin/docker ps -a | /usr/bin/grep -v Exit | /usr/bin/awk '{print $1","$1}'
