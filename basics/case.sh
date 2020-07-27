#!/bin/bash

echo "Please input a number between 1 and 3"
read number

case $number in
  1 ) echo "Number 1 entered"
    ;;
  2 ) echo "Number 2 entered"
    ;;
  3 ) echo "Number 3 entered"
esac
