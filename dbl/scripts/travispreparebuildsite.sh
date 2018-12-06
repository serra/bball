#!/bin/bash
set -ev

pyenv install 3.6.3

pyenv global 3.6.3
python --version
pip --version

pip install sphinx==1.7.9
pip install tinkerer
