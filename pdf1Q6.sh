#Write a program to compute Factors of a number N using prime factorization method.

#Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
#O/P -> Print the prime factors of number N.

#!/bin/bash

echo "Enter a number: "
read num

echo "The prime factors of $num are: "
for ((i=2; i*i<=num; i++))
do
  while [ $(($num % $i)) == 0 ]
  do
    num=$(($num / $i))
    echo $i
  done
done

if [ $num > 2 ]
then
  echo $num
fi