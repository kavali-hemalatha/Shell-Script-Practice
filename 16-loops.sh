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

for package in $@
do
  dnf list installed $package &>> $log_file
  if [ $? -ne 0 ]; then
     echo "$package not installed, installing now"
     dnf install $package -y &>> $log_file
     VALIDATE $? "$package installing"
  else
     echo "$package already installed, skipping"
  fi
done