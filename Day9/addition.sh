#!/bin/bash
<< mycom
function addition
{

   a=$1
   b=$2
   sum=$((a+b))
   echo "The addiont of $a and $b is: ${sum}"
}

x=3
y=4
addition $x $y
sleep 1
addition 4 7
mycom


function addition
{
  local a=$1
  b=$2
  local sum=$((a+b))
  display
  echo "$sum"
}

function display
{
  echo "The value of a from addition is: $a"

}


sum_x=`addition 4 5`
echo "The sum of 4 and 5 is: ${sum_x}"





















