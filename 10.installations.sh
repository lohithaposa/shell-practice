#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
  echo "Please run the script with root access"
  exit 1

echo "Installing Nginx"
dnf install nginx -y
fi