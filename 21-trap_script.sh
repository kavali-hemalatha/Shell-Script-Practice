#!/bin/bash/

##set -x
set -e
trap 'echo "there is a error in line $LINENO, command : $BASH_COMMAND"' ERR

R='\e[31m'
G='\e[32m'
Y='\e[33m'
N='\e[39m'

user_id=$(id -u)
log_folder="/var/log/shell-script"
log_file="/var/log/shell-script/$0.log"

if [ $user_id -ne 0 ]; then
echo -e "this script needs to be run with $R root $N user" | tee -a $log_file
exit 1
fi

mkdir -p $log_folder

for package in $@
do
  dnf list installed $package &>> $log_file
  if [ $? -ne 0 ]; then
     echo "$package not installed, installing now"
     dnf install $package -y &>> $log_file
  else
     echo -e "$Y $package already installed, skipping"
  fi
done