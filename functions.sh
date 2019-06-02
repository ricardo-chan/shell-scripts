#!/bin/bash

# Practicing funtions
# $0 means caller ($1 - $n are variables)
# $$ process ID, $# number of parameters
# $@ parameters passed, $? status of last call
printMe(){
  echo "Number of variables: $#"
  echo "All params $@"
  echo "Welcome $1"
  echo "Age: $2"
  echo "Job: $3"
}

echo Process ID $$
#echo hello> job$$  # Creating file named after job ID
printMe "Ricardo" "23" "Developer"

echo "===================="
ls ~/Desktop
echo "===================="

if [[ "$?" = 0 ]]; then
  echo "There are files"
else
  echo "There are no files"
fi
