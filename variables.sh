#!/bin/bash

# Learning variable handling in Bash Scripting
name=Ricardo
echo name: ${name}

fullName="Ricardo Chan"
echo $fullName

# Adding two numbers
number=10
number=$(expr $number + 1)
echo number: $number
