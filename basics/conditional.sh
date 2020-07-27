#!/bin/bash
# Reading input and practicing conditionals

# Different comparisons:
# -gt (>), -lt (<), -ge (>=), -le (<=)
# -eq (==), -ne (!=)

echo "Please input a number from 1 to 100"
read degree
echo "Degree: $degree"

if [ "$degree" -gt "50" ]; then
  echo "50 or more"
elif [ "$degree" -eq "50" ]; then
  echo "Exactly 50"
else
  echo "Under 50"
fi

# Different styles of conditionals
[ "$degree" -eq "100" ] && echo "Your number is 100"
[ "$degree" -eq "90" ] && \ # \ is used for line break
echo "Your number is 90" || \
echo "Your number is not 90"
