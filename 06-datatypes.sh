#!/bin/bash


NUM1=1000
NUM2=1500

SUM=$(($NUM1+$NUM2))

echo "Sum of Two Numbers is :- $SUM"


# Arrys
FRUITS=("Tomoto" "Banana" "Mango")

echo "Fruits are: ${FRUITS[@]}"
echo "First fruit is: ${FRUITS[0]}"
echo "Second fruit is: ${FRUITS[1]}"
echo "Third fruit is: ${FRUITS[2]}"

