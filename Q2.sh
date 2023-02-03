#Extend the above program to sort the array and then find the 2nd largest
#and the 2nd smallest element.

for i in {1..10}
do
random_number=$((RANDOM%899+100))
array[$i]=$random_number
done


declare -a array


sorted_array=($(echo "${array[@]}" | tr ' ' '\n' | sort -n))


second_largest=${sorted_array[8]}
second_smallest=${sorted_array[1]}



echo "Array: ${array[@]}"
echo "Sorted Array: ${sorted_array[@]}"
echo "2nd Largest Element: $second_largest"
echo "2nd Smallest Element: $second_smallest"