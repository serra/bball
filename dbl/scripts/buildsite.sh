#!/bin/bash
curdir=$(pwd)

mydir=$(dirname "${BASH_SOURCE[0]}")
dir="$mydir/../../site/"

cd $dir
tinker --build
cd $curdir