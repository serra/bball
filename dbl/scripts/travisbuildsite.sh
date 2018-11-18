#!/bin/bash
set -ev

python --version
pyenv versions
pyenv global 3.6.3
python --version
pip --version

pip install tinkerer

mydir=$(dirname "${BASH_SOURCE[0]}")
dir="$mydir/../../site/"
cd $dir

tinker --build