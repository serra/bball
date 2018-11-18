#!/bin/bash
set -ev
echo "Commit report files if changed ... "
mydir=$(dirname "${BASH_SOURCE[0]}")
reportdir="$mydir/../../site/pages/reports"

if [ -n "$(git status $reportdir --porcelain)" ]; then 
  git add "$reportdir/**";
  git commit -m "Updated report files";
else 
  echo "no changes to report files";
fi
