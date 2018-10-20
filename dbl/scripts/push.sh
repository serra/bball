#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

upload_files() {
  git remote add origin https://${GH_TOKEN}@github.com/serra/bball.git > /dev/null 2>&1
  git push --quiet --set-upstream origin master 
}

setup_git
upload_files