#!/bin/bash
<< mycom
read -p "Enter your first value: " num1
read -p "Enter you second value: " num2
echo "The first value is: ${num1}"
echo "The second value is: ${num2}"
mycom
read -p "Enter your two values: " num1  num2
echo -e "The first value is: ${num1} \nThe second value is: ${num2}"
