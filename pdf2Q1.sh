#Write a program that takes a command-line argument n and prints a
#table of the powers of 2 that are less than or equal to 2^n till 256 is
#reached..

#!/bin/bash

read -p "enter value : " n


p=1

while [ $p -le 256 ]
do
  if [ $n -eq 0 ]
  then
    break
  fi
  echo $p
  p=$((p*2))
  n=$((n-1))
done

  

