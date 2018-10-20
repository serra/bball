#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

add_changes_to_master_branch() {
  git checkout -b master
}

upload_files() {
  git remote add origin https://${GH_TOKEN}@github.com/serra/bball.git > /dev/null 2>&1
  git status
  echo "pushing to origin ..."
  git push --quiet --set-upstream origin master
  echo "done"
}

setup_git
add_changes_to_master_branch
upload_files
