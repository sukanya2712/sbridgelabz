#Help user find degF or degC based on their Conversion Selection. Use
#Case Statement and ensure that the inputs are within the Freezing Point (
#0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
#a. degF = (degC * 9/5) + 32
#b. degC = (degF – 32) * 5/9

#!/bin/bash

echo "Enter a temperature value:"
read temperature

echo "Select the conversion you want to make:
1. Celsius to Fahrenheit
2. Fahrenheit to Celsius
Enter your choice (1 or 2):"
read choice

# Perform the conversion based on the user's selection
case $choice in
1)
  if [ $temperature -ge 0 -a $temperature -le 100 ]
  then
    result=$(echo "scale=2; ($temperature * 9/5) + 32" | bc)
    echo "$temperature °C is equal to $result °F"
  else
    echo "Invalid temperature, must be between 0°C and 100°C."
  fi
  ;;
2)
  if [ $temperature -ge 32 -a $temperature -le 212 ]
  then
    result=$(echo "scale=2; ($temperature - 32) * 5/9" | bc)
    echo "$temperature °F is equal to $result °C"
  else
    echo "Invalid temperature, must be between 32°F and 212°F."
  fi
  ;;
*)
  echo "Invalid selection, must choose 1 or 2."
  ;;
esac