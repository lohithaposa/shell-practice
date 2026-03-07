#/bin/bash
#read command: will read what we entered on the terminal and pass that to the variable
echo " Please enter your username::"
read USER_NAME 

echo "user name is :$USER_NAME"
 # -s for storing the password for sensitive information
echo " Please enter password::"
read -s PASSWORD

echo "password is : $PASSWORD"