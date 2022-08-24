#!/bin/sh


/usr/bin/curl --connect-timeout 5 -I 172.31.31.140:1180 > wordpress_curl.txt

if /usr/bin/grep -q "Error establishing a database connection" wordpress_curl.txt; then
    if [[ -n $(sudo netstat -tlnp | grep 0:3316| grep docker-proxy) ]] ; then 
        printf "Application,status\nDatabase,Password changed\n";

    else
        printf "Application,status\nDatabase,Bind error\n";
    fi
else
	printf "Application,status\nDatabase,OK\n";


fi




