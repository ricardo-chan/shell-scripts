#!/bin/bash

name=Name
while [[ -n "$name" ]]; do
  echo "Enter name:"
  read name
  echo "Name: $name"
done

while IFS= read -r line
do
  echo "$line"
done < multiline.txt
