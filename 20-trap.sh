#!/bin/bash

set -e #this will checking for errors, if errors it will exit.

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR
echo "Hello World"
echo "I am practicing shell script"
echoo "printing error here"
echo "There is no error."