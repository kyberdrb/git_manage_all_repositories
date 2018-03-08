#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Bad arguments"
  echo "Usage"
  echo "./git_push_all repo_directory commit_message"
  echo "e.g."
  echo "./git_push_all ~/github/git_repo \"message\" "
  exit 1
fi

git -C $1 pull
git -C $1 status
git -C $1 add -A
git -C $1 commit -m "$2"
git -C $1 push
