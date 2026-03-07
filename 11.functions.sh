#!/bin/bash
#id -u = to get user id
# root user id = 0


USERID=$(id -u)
if [ $USERID -ne 0 ]; then
  echo "Please run the script with root access"
  exit 1
fi

VALIDATE(){

if [ $1 -ne 0]; then
  echo " $2 failure"
  exit 1
else
  echo "$2 success"
fi  

}

dnf install nginx -y
VALIDATE $? "Installing Nginx"

dnf install mysql -y
VALIDATE $? "Installing Nginx"

dnf install nodejs -y
VALIDATE $? "Installing Nginx"


