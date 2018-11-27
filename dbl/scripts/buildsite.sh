#!/bin/bash
curdir=$(pwd)

mydir=$(dirname "${BASH_SOURCE[0]}")
sitedir="$mydir/../../site/"

cd $sitedir
tinker --build

#copy new output to local stats:
cp -R -f -a ../dbl/output/* ./stats
#copy stats and charts to target site
cp -R -f -a ./charts ./blog/html
cp -R -f -a ./stats ./blog/html

cd $curdir