#!/bin/bash
<< mycomm
#read -p "Enter your value: "  xy
read -p "Enter your value: "
#echo "The value of xy is: ${xy}"
echo "The entered value is: ${REPLY}"
mycomm
