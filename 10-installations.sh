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