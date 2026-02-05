#!/bin/bash


echo "All args passed to script: $@"
echo "Number of vars passed to script:$#"
echo "Script name: $0"
echo "Present directory: $PWD"
echo "Who is running: $USER"
echo "Home of Directory of the current user: $HOME"
echo "PID of the Script: $$"
sleep 50 &
echo "PID of the recently background process: $!"
echo "All args passed to script:$*"