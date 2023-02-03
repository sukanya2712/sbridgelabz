#!/bin/bash

declare -A birthMonth


for ((i=1; i<=50; i++))
do
  month=$((RANDOM % 12 + 1))
  birthMonth[$month]=$((birthMonth[$month] + 1))
done



echo "Birth Month Count:"
for i in "${!birthMonth[@]}"
do
  echo "$i: ${birthMonth[$i]}"
done

echo "Individuals having birthdays in the same month:"

for i in "${!birthMonth[@]}"
do
  if [ ${birthMonth[$i]} -gt 1 ]
  then
    echo "Month $i: ${birthMonth[$i]} individuals"
  fi
done
