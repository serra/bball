#!/bin/bash

echo "Commit csv input files if changed"
mydir=$(dirname "${BASH_SOURCE[0]}")
inputdir="$mydir/../input"

# if we have new input files, we should push them to github
echo "$(git status $inputdir --porcelain)"

if [ -n "$(git status $inputdir --porcelain)" ]; then 
  GAMES=$(git diff -U0 $inputdir/*.csv | 
        grep -v '^@@' | 
        awk -F\; 'NR>4 {print $11 " " $9 " @ " $6 }' | 
        sort -r | uniq)
  MESSAGE=$"input files changed: $GAMES"
  git add $inputdir/**;
  git commit -m "$MESSAGE"
  echo "committed with message:\n\n$MESSAGE"
else 
  echo "no changes to input files";
fi

