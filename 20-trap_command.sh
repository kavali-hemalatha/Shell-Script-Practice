#!/bin/bash/

set -e
##set -x
trap 'echo "there is a error in line $LINENO, command : $BASH_COMMAND"' ERR

echo "Hello World"
echo "Im learning linux"
echoo "Im learning shell script"
echo "I want to get an error"