#!/bin/bash
curdir=$(pwd)

mydir=$(dirname "${BASH_SOURCE[0]}")
sitedir="$mydir/../../site/"

cd $sitedir
tinker --build

#copy charts
cp -R -f -a ./charts ./blog/html
#copy stats
statsdir="./blog/html/stats"
mkdir -p $statsdir && cp -R -f -a ../dbl/output/* $statsdir

cd $curdir