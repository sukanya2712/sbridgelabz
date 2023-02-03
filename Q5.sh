#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,

#etc and store them in an array


#!/bin/bash

declare -a repeating_digits
index=0

for i in {0..100}
do
if [ $i -gt 9 ]
then
# Step 4: Check if the first and second digits are the same
if [ $((i/10)) -eq $((i%10)) ]
then
repeating_digits[$index]=$i
index=$(($index+1))
fi
fi
done

echo "The repeating digits in the range 0 to 100 are: ${repeating_digits[@]}"