#!/bin/bash

# how to use it
# ./checkHost 192.168.1.131

#Requirements
#ssh connection done on 192.168.1.135 previously

#setting the log file
LOG_FILE="status.log"

#cheking if IP is UP or DOWN
ping -q -c1 $1 > /dev/null
 
#if host is UP  result = 0 
if [ $? -eq 0 ]
then
    echo $(date +%F) : $(date +%X) : ${1} "is UP" >> $LOG_FILE
    #rsync ~/Desktop/testData/* root@192.168.1.135:/var/media/Elements/test
    scp log.txt root@$1:/var/media/Elements/test
else
    echo $(date +%F) : $(date +%X) : ${1} "is DOWN" >> $LOG_FILE
fi