#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
echo "this script needs to be run with root user"
exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
echo "$2.....FAILURE"
exit 1
else
echo "$2.....SUCCESS"
fi
}
echo "installing Nginx..."
dnf install nginx -y
VALIDATE $? "installing nginx"

dnf install mysql -y
VALIDATE $? "installing mysql"

dnf install nodejs -y
VALIDATE $? "installing nodejs"