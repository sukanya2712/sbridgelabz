#Extend the Prime Factorization Program to store all the Prime Factors of a

#number n into an array and finally display the output.

#!/bin/bash

echo "Enter a number: "
read number


declare -a prime_factors
index=0


for (( i=2; i*i<=number; i++ ))
do
while [ $(($number%$i)) -eq 0 ]
do
prime_factors[$index]=$i
index=$(($index+1))
number=$(($number/$i))
done
done


if [ $number -gt 2 ]
then
prime_factors[$index]=$number
fi


echo "Prime factors of $number are: ${prime_factors[@]}"




