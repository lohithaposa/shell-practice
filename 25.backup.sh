#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
   echo -e " $R Please run with root user $N"
fi

mkdir -p $LOGS_FOLDER

USAGE(){
   echo "  $R sudo backup <SOURCE_DIR> <DEST_DIR> <DAYS>[default 14 days] $N"
    exit 1

}

if [ $# -lt 2 ]; then
    USAGE
fi

