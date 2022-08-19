# #!/bin/sh
# /usr/bin/echo "exit" | mysql -L root/petclinic@petclinic| /usr/bin/grep Connected > /dev/null
# if [ $? -eq 0 ] 
# then
#    echo "OK"
# else
#   # /usr/bin/awk 'BEGIN{print "DB_CONN"}{print "NOT OK"}'
#   echo "NOT OK"
# fi

# # echo "exit" assures that your program exits immediately (this gets piped to sqlplus). -L assures that sqlplus won't ask for password if credentials are not ok (which would make it get stuck as well).

# # (> /dev/null just hides output from grep, which we don't need because the results are accessed via $? in this case)

