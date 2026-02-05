#!/bin/bash

NUMBER=$1

# -gt -> greater than
# -lt -> less than
# -eq -> equal
# -ne -> not equal

if [ $NUMBER -gt 100 ]; then
    echo "Given number : $NUMBER is greater than 100"
else 
    echo "Given number : $NUMBER is less than 100"
fi