#!/bin/bash
echo "$@"
echo "$*"

echo "Below out is using star"
for each in "$*"
do
  echo "This is first time"
done

echo "Below out is using @"
for each in "$@"
do
 echo "This is a line"
done
