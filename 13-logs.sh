#!/bin/bash

user_id=$(id -u)
log_folder="/var/log/shell-script"
log_file="/var/log/shell-script/$0.log"


if [ $user_id -ne 0 ]; then
echo "this script needs to be run with root user" | tee -a $log_file
exit 1
fi

mkdir -p $log_folder

VALIDATE(){
    if [ $1 -ne 0 ]; then
echo "$2.....FAILURE" | tee -a $log_file
exit 1
else
echo "$2.....SUCCESS" | tee -a $log_file
fi
}

dnf install nginx -y &>> $log_file
VALIDATE $? "installing nginx"

dnf install mysql -y &>> $log_file
VALIDATE $? "installing mysql"

dnf install nodejs -y &>> $log_file
VALIDATE $? "installing nodejs"