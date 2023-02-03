#Take a number from user and check if the number is a Prime then show

#that its palindrome is also prime
#a. Write function check if number is Prime
#b. Write function to get the Palindrome.
#c. Check if the Palindrome number is also prime

function is_prime {
num=$1
if [ $num -le 1 ]; then
return 0
fi
for ((i=2; i<=$((num/2)); i++)); do
if [ $((num%i)) == 0 ]; then
return 0
fi
done
return 1
}


function get_palindrome {
num=$1
reverse=0
while [ $num -gt 0 ]; do
digit=$((num%10))
reverse=$((reverse*10+digit))
num=$((num/10))
done
echo $reverse
}


echo "Enter a number: "
read number

if is_prime $number; then
echo "$number is a prime number"

palindrome=$(get_palindrome $number)

if is_prime $palindrome; then
echo "And its palindrome $palindrome is also a prime number"
else
echo "But its palindrome $palindrome is not a prime number"
fi
else
echo "$number is not a prime number"
fi