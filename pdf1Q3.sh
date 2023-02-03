#Write a program that takes a input and determines if the number is a prime.

#!/bin/bash

read -p "enter no : " num

for (( i=1;i<=num;i++ ))
do
  if [ $((num%i)) -eq 0 ]
  then
  ((factors++))
  fi
done

  if [ $factors -eq 2 ]
  then
     echo "prime no"
  else
     echo "not prime"
   fi