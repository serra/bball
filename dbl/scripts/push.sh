#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

add_changes_to_master_branch() {
  git checkout –b temp      #makes a new branch from current detached HEAD
  git branch –f master temp #update master to point to the new <temp> branch
  git branch –d temp        #delete the <temp> branch
}

upload_files() {
  git remote add origin https://${GH_TOKEN}@github.com/serra/bball.git > /dev/null 2>&1
  git push --quiet --set-upstream origin master 
}

setup_git
add_changes_to_master_branch
upload_files
