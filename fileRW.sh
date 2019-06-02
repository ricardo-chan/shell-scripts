#!/bin/bash

# Practicing reading and writing files
echo "Hello Ricardo" > Name.txt
echo "Where do you live" >> Name.txt

echo "Reading file using cat"
cat Name.txt

echo "Writing multiline file"
cat <<EOF >users.txt
John
Carl
Jim

EOF

cat users.txt
