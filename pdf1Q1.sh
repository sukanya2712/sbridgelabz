#!/bin/bash

echo "Enter a number: "
read n

echo "Table of powers of 2 that are less than or equal to 2^$n: "

for ((i=0; i<=n; i++))
do
  result=$((2**$i))
  echo "2^$i = $result"
done
