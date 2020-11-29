#!/usr/bin/env bash

# Developer: Ricardo Chan
# Version: 2
# Last Update: 07/30/2019

echo "============== Updating Repos =============="
echo

for d in */ ; do
    if [ -d ${d} ]; then
        dir=${d::-1}
        echo
        echo "------ Updating $dir ------"
        echo
        cd $d
        git checkout dev
        git pull origin
        cd ..
        echo "Done"
    fi
done
echo "Finished!"
