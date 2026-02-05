#!/bin/bash

USERID=$(id -u)



if [ $USERID -ne 0 ]; then
    echo "Please run this command with sudo access only"
    exit 1
fi


echo "Installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing nginx .....FAILD."
else
    echo "Installing nginx .....SUCCESS."
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing mysql .....FAILD."
else
    echo "Installing mysql .....SUCCESS."
fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installing nodejs .....FAILD."
else
    echo "Installing nodejs .....SUCCESS."
fi