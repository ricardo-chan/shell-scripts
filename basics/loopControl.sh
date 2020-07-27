#!/bin/bash

# Practicing loop control
echo "===== Continue ====="
for i in {1..10}; do
  [[ "$i" -eq "5" ]] && continue
  echo "i: $i"
done

echo "=====  Break   ====="
for i in {1..10}; do
  [[ "$i" -eq "5" ]] && break
  echo "i: $i"
done
