#Find the Magic Number

#a. Ask the user to think of a number n between 1 to 100
#b. Then check with the user if the number is less then n/2 or greater
#c. Repeat till the Magic Number is reached..

#!/bin/bash


# function to find the magic number
find_magic_number () {
  lower=1
  upper=100

  while [[ lower -le upper ]]; do
    mid=$(( (lower + upper) / 2 ))
    echo "Is your number less than or equal to $mid? (y/n)"
    read answer
    if [[ $answer == "y" ]]; then
      upper=$(( mid - 1 ))
    else
      lower=$(( mid + 1 ))
    fi
  done

  echo "The magic number is $lower"
}

# call the function
find_magic_number




