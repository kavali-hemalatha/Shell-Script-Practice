#!/bin/bash

num1=100
num2=200

sum=$(($num1+$num2))

echo "sum is $sum"

###Array###

FRUITS=("Apple" "Banana" "Pomogranate")

echo "Fruits are: ${FRUITS[@]}"
echo "First Fruit is: ${FRUITS[0]}"
echo "Second Fruit is: ${FRUITS[1]}"
echo "Third Fruit is: ${FRUITS[2]}"