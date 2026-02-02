#!/bin/bash

###2 dots refers to expansion where as more than 2 dots refers to just a string. it treats as a string.

##If you write three dots ({1...100}), Bash does not recognize it as valid syntax.
##It treats it as a literal string instead of a range, so the loop variable i just becomes the string "{1...100}".

for i in {1..100}
do
   echo $i
done