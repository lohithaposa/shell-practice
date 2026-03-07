#!/bin/bash
#id -u = to get user id
# root user id = 0


USERID=$(id -u)
if [ $USERID -ne 0 ]; then
  echo "Please run the script with root access"
  exit 1
fi
echo "Installing Nginx"
dnf install nginx -y

if [ $? -ne 0]; then
  echo " Installing nginx failure"
  exit 1
else
  echo "Installing Nginx is success"
fi  

dnf install mysql -y
if [ $? -ne 0]; then
  echo " Installing mysql failure"
  exit 1
else
  echo "Installing mysql is success"
fi  

dnf install nodejs -y
if [ $? -ne 0]; then
  echo " Installing nodejs failure"
  exit 1
else
  echo "Installing nodejs is success"
fi  

