#!/bin/bash
#id -u = to get user id
# root user id = 0


USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log" #$0= Toget the script file name
if [ $USERID -ne 0 ]; then
  echo "Please run the script with root access"
  exit 1
fi

mkdir -p $LOGS_FOLDER

#By default shell will not execute Validate function when we call the function then it will execute the function
VALIDATE(){
   if [ $1 -ne 0 ]; then
     echo "$2 failure"
     exit 1
   else
     echo "$2 success"
   fi  

}

dnf install nginx -y &>> $LOGS_FILE #&  means success or failure output it will redirect to logsfile
VALIDATE $? "Installing Nginx"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "Installing Nginx"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing Nginx"


