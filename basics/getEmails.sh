#!/bin/bash

# Script to obtain author emails from GitHub repos
# Needs a file named links.txt with repo links

echo "==== Reading files ===="

path="$(pwd)" # Getting current directory
echo "root path: $path"

while IFS= read -r gitLink #  Reading links line by line
do
  echo "Start cloning project $gitLink"
  arr=(`echo $gitLink | tr '/' ' ' ` ) #  Splitting GitHub URL
  appPath="$path/${arr[3]}" # Getting path for cloned repos
  echo $appPath
  git clone $gitLink #  Cloning given repo
  cd $appPath # Going to cloned repo
  git log > ../${arr[3]}_log.txt  # Getting log for current repo and saved in root path
  rm -rf $appPath # Removing repo once log is obtained
  cd $path  # Going to root path
  echo "==== Logs obtained ===="

  # Read authors
  while IFS= read -r line
  do
    if [[ $line -eq "Author: "* ]]; then
      if [[ $(grep "$line" "developerEmails.txt") ]]; then
        echo "Already saved, will not save again"
      else
        echo "Writing developer info to file..."
        echo $line >> developerEmails.txt
      fi
    fi

  done < ${arr[3]}_log.txt
done < links.txt
