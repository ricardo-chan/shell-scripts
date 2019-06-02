#!/bin/bash

name=Name
while [[ -n "$name" ]]; do
  echo "Enter name:"
  read name
  echo "Name: $name"
done
