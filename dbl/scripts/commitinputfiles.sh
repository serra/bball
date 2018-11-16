#!/bin/bash

echo "Travis Config"

git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git config --global push.default current
git status

echo "Checkout the branch being built"
git stash
git checkout ${TRAVIS_BRANCH}
git stash pop
git status

echo "Commit report- and csv files if changed"
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

echo "Now only thing left to do is push to Github ... "