#Extend the program to take a range of number as input and output the Prime

#Numbers in that range.

#!/bin/bash

function is_prime {

for (( i=1;i<=num;i++ ))
do
  if [ $((num%i)) -eq 0 ]
  then
  ((factors++))
  fi
done

  if [ $factors -eq 2 ]
  then
     return 0
  else 
     return 1
   fi
}



echo "Enter the starting number of the range: "
read start
echo "Enter the ending number of the range: "
read end

if [ $start -gt $end ]; then
echo "Error: Starting number should be less than or equal to the ending number"
fi

echo "Prime numbers in the range $start to $end are: "
for ((i=$start; i<=$end; i++))
do
   if is_prime $i; then
   echo $i
    fi
done
