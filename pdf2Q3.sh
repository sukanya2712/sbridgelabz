#!/bin/bash

head=0
tail=0

while [ $head -lt 11 ] && [ $tail -lt 11 ]
do
  coin=$((RANDOM % 2))
  if [ $coin -eq 0 ]
  then
    head=$((head + 1))
    echo "Heads count: $head"
  else
    tail=$((tail + 1))
    echo "Tails count: $tail"
  fi
done

echo "Heads: $head"
echo "Tails: $tail"

if [ $head -eq 11 ]
then
  echo "Heads wins"
else
  echo "Tails wins"
fi
