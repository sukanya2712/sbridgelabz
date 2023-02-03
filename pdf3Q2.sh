#Write a function to check if the two numbers are Palindromes

#!/bin/bash

function arePalindromes() {
  local num1="$1"
  local num2="$2"

  if isPalindrome "$num1" && isPalindrome "$num2"; then
    echo "Both numbers are palindromes."
  else
    echo "At least one of the numbers is not a palindrome."
  fi
}

function isPalindrome() {
  local str="$1"
  local length=${#str}

  for ((i=0; i<length/2; i++)); do
    if [[ "${str:i:1}" != "${str:length-i-1:1}" ]]; then
      return 1
    fi
  done

  return 0
}

echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

arePalindromes "$num1" "$num2"
