

#!/bin/bash
#id -u = to get user id
# root user id = 0
set -e 
trap 'echo " there is an error in $LINENO, Command: $BASH_COMMAND"' ERR

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log" #$0= Toget the script file name

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"

if [ $USERID -ne 0 ]; then
  echo -e "$R Please run the script with root access $N" | tee -a $LOGS_FILE
  exit 1
fi

mkdir -p $LOGS_FOLDER

#By default shell will not execute Validate function when we call the function then it will execute the function
# VALIDATE(){
#    if [ $1 -ne 0 ]; then
#      echo "$2 ... $R failure $N" | tee -a $LOGS_FILE # -a is appending,not to overide to append
#      exit 1
#    else
#      echo "$2 .... $G success $N"  | tee -a $LOGS_FILE
#    fi  

# }

for package in $@ # sudo sh 14.loop.sh nginx mysql nodejs
do 
   dnf list installed $package &>>LOGS_FILE
   if [ $? -ne 0 ]; then
    echo "$package not installed, installing now.."
    dnf install $package -y &>>LOGS_FILE
    #VALIDATE $? "$package installation"
   else
    echo -e "$package already installed, $Y skipping $N"
   fi
done   



