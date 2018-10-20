#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

add_changes_to_master_branch() {
  git branch -f master HEAD #update master to point to the new <temp> branch
  git log --oneline master -n 5  
}

upload_files() {
  echo "remote add origin https://${GH_TOKEN}@github.com/serra/bball.git"
  git remote add origin https://serra:${GH_TOKEN}@github.com/serra/bball.git > /dev/null 2>&1
  echo "pushing to origin ..."
  git push --quiet --set-upstream origin master
  echo "done"
}

setup_git
add_changes_to_master_branch
upload_files
