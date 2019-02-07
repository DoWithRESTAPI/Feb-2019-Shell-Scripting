#!/bin/bash

<< mycom
echo "The script name is: ${0}"
echo "The first arg is: ${1}"
echo "The second arg is: ${2}"

echo "The 9th  arg is: $9"
echo "The 11th arg is: $11"
mycom

echo "ALL VALUES ARE: $*"
echo "ALL VALUES ARE: $@"
echo "The no of command line argumnts: $#"
