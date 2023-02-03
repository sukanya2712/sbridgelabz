#Write a Program where a gambler starts with Rs 100 and places Re 1 bet
#until he/she goes broke i.e. no more money to gamble or reaches the
#goal of Rs 200. Keeps track of number of times won and number of bets
#made.

#!/bin/bash

amount=100
goal=200


bets=0
wins=0

#Gambler starts with Rs 100 and places Re 1 bet

while [ $amount -gt 0 ] && [ $amount -lt $goal ]
do
let bets++
if [ $((RANDOM % 2)) == 1 ]
then
let amount++
let wins++
else
let amount--
fi
done

if [ $amount -eq $goal ]
then
echo "You reached the goal of Rs $goal with $bets bets and $wins wins."
else
echo "You are broke after $bets bets and $wins wins."
fi