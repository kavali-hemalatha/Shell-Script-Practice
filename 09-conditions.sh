#!/bin/bash

number=$1

if [ $number -gt 45 ]; then
echo "Entered number : $number greater than 45"
elif [ $number -eq 45 ]; then
echo "Entered number : equal to 45"
else
echo "Entered number : $number less than 45"