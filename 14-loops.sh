#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
WHITE_BG_RED_TEXT=$"\033[0;31;47m"
GREEN="\033[0;32m"
NC="\033[0m"

if [ $USERID -ne 0 ]; then
    echo "Please run this command with sudo access only" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$2         .... ${WHITE_BG_RED_TEXT}FAILD${NC} ." | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2         .... SUCCESS." | tee -a $LOGS_FILE
    fi
}

for package in $@ # sudo sh 14-loops.sh nginx mysql nodejs python3-devel
do
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE $? "$package installation"
done