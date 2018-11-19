#!/bin/bash
set -ev

pyenv global 3.6.3
python --version
pip --version

pip install sphinx==1.7.9
pip install tinkerer

mydir=$(dirname "${BASH_SOURCE[0]}")
dir="$mydir/../../site/"
cd $dir

tinker --build