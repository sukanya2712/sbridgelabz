#Write a Program to show Sum of three Integer adds to ZERO

#!/bin/bash

echo "Enter the first integer: "
read num1
echo "Enter the second integer: "
read num2
echo "Enter the third integer: "
read num3


declare -a numbers
numbers=($num1 $num2 $num3)


sum=0
for i in ${numbers[@]}
do
sum=$(($sum + $i))
done

if [ $sum -eq 0 ]
then
echo "The sum of $num1, $num2, and $num3 is zero."
else
echo "The sum of $num1, $num2, and $num3 is not zero."
fi