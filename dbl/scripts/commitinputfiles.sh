#!/bin/bash
mydir=$(dirname "${BASH_SOURCE[0]}")
echo $mydir
git --version

# if we have new input files, we should push them to github
# git status dbl/input --porcelain

# if [ -n "$(git status dbl/input --porcelain)" ]; then 
#   GAMES=$(git diff -U0 ./dbl/input/*.csv | 
#         grep -v '^@@' | 
#         awk -F\; 'NR>4 {print $11 " " $9 " @ " $6 }' | 
#         sort -r | uniq)
#   MESSAGE=$"input files changed: $GAMES"
#   git add dbl/input/**;
#   git commit -m "$MESSAGE"
# else 
#   echo "no changes to input files";
# fi