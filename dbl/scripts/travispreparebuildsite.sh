#!/bin/bash
set -ev

pyenv versions
python --version
pip --version

pyenv global 3.6.3
python --version
pip --version

pip install sphinx==1.7.9
pip install tinkerer
