#!/bin/bash

echo "Iterating numbers:"
for i in {0..12}
do
  echo "Iteration $i"
done

echo "Iterating files in current directory"
for fileName in *; do
  echo "file name: $fileName"
done

echo "Example with conditionals"
for i in {1..100}; do
  if [[ ( "$i" -gt "10" ) && ( "$i" -lt "50" ) ]]; then
    echo "i: ${i}"
  fi
done
