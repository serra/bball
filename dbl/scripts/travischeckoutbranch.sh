#!/bin/bash

echo "Travis Config"

git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git config --global push.default current
git status

echo "Checkout the branch being built"
git stash
git checkout ${TRAVIS_BRANCH}
git stash pop
git status
