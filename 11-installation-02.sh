#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
echo "this script needs to be run with root user"
exit 1
fi

echo "installing Nginx..."
dnf install nginx -y

if [ $? -ne 0 ]; then
echo "installing Ngnix.....FAILURE"
exit 1
else
echo "installing Nginx.....SUCCESS"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing MySQL ... FAILURE"
    exit 1
else
    echo "Installing MySQL ... SUCCESS"
fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installing nodejs ... FAILURE"
    exit 1
else
    echo "Installing nodejs ... SUCCESS"
fi