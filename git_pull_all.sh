#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Bad arguments"
  echo "Usage"
  echo "./git_pull_all root_git_dir"
  echo "e.g."
  echo "./git_pull_all ~/github_root_dir"
  exit 1
fi

for d in $(find $1 -maxdepth 1 -type d)
do
  echo $d
  git -C $d pull
done
