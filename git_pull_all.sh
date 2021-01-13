#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Bad arguments"
  echo "Usage"
  echo "./git_pull_all root_git_dir"
  echo "e.g."
  echo "./git_pull_all ~/github_root_dir"
  exit 1
fi

for d in $(find $1 -name ".git" -type d)
do
  repo_name=$(echo $d/ | rev | cut -d'/' -f2 --complement | rev)
  echo "$repo_name"
  git -C "$repo_name" pull
done

