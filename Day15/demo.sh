#!/bin/bash
set -x
echo "This is line one"
x=`date`
echo "Date is: $x"
y=`ls`
echo "list is: $y"
set +x
