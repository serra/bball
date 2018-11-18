#!/bin/bash

echo "Commit report files if changed"
mydir=$(dirname "${BASH_SOURCE[0]}")
reportdir="$mydir/../../site/pages/reports"

echo "reportdir: $reportdir"
git status
ls -la $reportdir
git status $reportdir
git status $reportdir --porcelain

if [ -n "$(git status $reportdir --porcelain)" ]; then 
  git add ".$reportdir/**";
  git commit -m "Updated report files"
else 
  echo "no changes to report files";
fi
