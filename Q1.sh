#Write a program in the following steps
#a. Roll a die and find the number between 1 to 6
#b. Repeat the Die roll and find the result each time
#c. Store the result in a dictionary
#d. Repeat till any one of the number has reached 10 times
#e. Find the number that reached maximum times and the one that was for minimum times


#!/bin/bash

declare -A die_results
die_results=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)

while [ ${die_results[1]} -lt 10 ] && [ ${die_results[2]} -lt 10 ] && [ ${die_results[3]} -lt 10 ] && [ ${die_results[4]} -lt 10 ] && [ ${die_results[5]} -lt 10 ] && [ ${die_results[6]} -lt 10 ]
do
  roll=$((RANDOM % 6 + 1))
  die_results[$roll]=$((${die_results[$roll]} + 1))
done

max_result=0
max_number=0
min_result=10
min_number=0

for i in {1..6}
do
  if [ ${die_results[$i]} -gt $max_result ]
  then
    max_result=${die_results[$i]}
    max_number=$i
  fi
  if [ ${die_results[$i]} -lt $min_result ]
  then
    min_result=${die_results[$i]}
    min_number=$i
  fi
done

echo "Die results: ${die_results[@]}"
echo "Max number: $max_number with count: $max_result"
echo "Min number: $min_number with count: $min_result"
