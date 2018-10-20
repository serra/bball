#!/bin/sh

setup_git() {
  git config --global user.email "marijn@serraict.com"
  git config --global user.name "serra"
}

add_changes_to_master_branch() {
  git branch -f master HEAD #update master to point to the new <temp> branch
  git log --oneline master -n 5
}

upload_files() {
  git remote add origin https://serra:${GH_TOKEN}@github.com/serra/bball.git > /dev/null 2>&1
  git push --quiet --set-upstream origin master
}

setup_git
add_changes_to_master_branch
upload_files
