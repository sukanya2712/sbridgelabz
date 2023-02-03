#Write a program that takes a command-line argument n and prints the nth harmonic

#number. Harmonic Number is of the form

#!/bin/bash

function harmonic_number {
n=$1
sum=0
for ((i=1; i<=n; i++)); do
sum=$(echo "$sum + 1/$i" | bc )
done
echo $sum
}


read -p "enter number to find its harmonic progression" m
result=$(harmonic_number $m)
echo "The $m th Harmonic Number is: $result"
