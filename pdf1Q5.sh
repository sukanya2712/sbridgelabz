#Write a program that computes a factorial of a number taken as input.

#5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

#!/bin/bash

echo "Enter a number: "
read num

factorial=1
for ((i=1; i<=num; i++))
do
  factorial=$((factorial * i))
done

echo "$num! = $factorial"
