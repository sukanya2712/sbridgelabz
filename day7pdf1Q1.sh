#Write a program in the following steps
#a. Generates 10 Random 3 Digit number.
#b. Store this random numbers into a array.
#c. Then find the 2nd largest and the 2nd smallest element without sorting the array.

for i in {1..10}
do
random_number=$((RANDOM%899+100))
array[$i]=$random_number
done


declare -a array

largest1=0
largest2=0
smallest1=999
smallest2=999

for i in ${array[@]}
do
if [ $i -gt $largest1 ]
then
largest2=$largest1
largest1=$i
elif [ $i -gt $largest2 ] && [ $i -ne $largest1 ]
then
largest2=$i
fi

if [ $i -lt $smallest1 ]
then
smallest2=$smallest1
smallest1=$i
elif [ $i -lt $smallest2 ] && [ $i -ne $smallest1 ]
then
smallest2=$i
fi
done

echo "Array: ${array[@]}"
echo "2nd Largest Element: $largest2"
echo "2nd Smallest Element: $smallest2"