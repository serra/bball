#!/bin/bash
set -ev

python --version
pyenv versions
pyenv global 3.6.3
python --version
pip --version

pip install tinkerer

cd ../../site
tinker --build