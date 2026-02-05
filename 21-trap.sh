#!/bin/bash

set -e #this will checking for errors, if errors it will exit.

trap 'echo "There is no error in $LINENO, Command $BASH_COMMAND"' ERR

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
W_BG_R_T=$"\033[0;31;47m"
R="\e[31m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo -e $R "Please run this command with sudo access only" $N | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

for package in $@ # sudo sh 14-loops.sh nginx mysql nodejs python3-devel
do
    dnf list installed $package &>>$LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package not installed, installing now"
        dnf install $package -y &>>$LOGS_FILE        
    else
        echo -e "$package already installed, $Y ....skipping $N"
    fi
done