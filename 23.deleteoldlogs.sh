#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"

LOGS_DIRECTORY=/home/ec2-user/app-logs

if [ ! d  $LOGS_DIRECTORY ] ; then
   echo  -e " $LOGS_DIRECTORY does not exist"
   exit 1
fi   

FILES_TO_DELETE=$(find $LOGS_DIRECTORY -name "*.log" -type f -mtime +14)
echo "$FILES_TO_DELETE"

while IFS= read -r filepath; do
 echo "DEleting the file : $filepath"
 rm -f $filepath
 echo "deleting file : $filepath"
done <<< $FILES_TO_DELETE