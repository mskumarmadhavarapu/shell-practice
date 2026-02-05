#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]; then
    echo "Please run this command with sudo access only"
    exit 1
fi

echo "Installing Nginx"
dnf install nginss -y

if [ $? -ne 0 ]; then
    echo "Installing nginx .....FAILD."
else
    echo "Installing nginx .....SUCCESS."
fi