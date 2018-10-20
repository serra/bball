#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

add_changes_to_master_branch() {
  git branch –f master HEAD #update master to point to the new <temp> branch
}

upload_files() {
  git remote add origin https://${GH_TOKEN}@github.com/serra/bball.git > /dev/null 2>&1
  git push --quiet --set-upstream origin master 
}

setup_git
add_changes_to_master_branch
upload_files
