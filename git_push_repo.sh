#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Bad number of arguments"
  echo "Usage"
  echo "./git_push_all repo_directory commit_message"
  echo "e.g."
  echo "./git_push_all ~/github/git_repo \"message\" "
  exit 1
fi

REPO_DIR=$1
COMMIT_MESSAGE=$2
DESCRIPTION=$3

git -C $REPO_DIR pull
git -C $REPO_DIR status
git -C $REPO_DIR add -A
git -C $REPO_DIR commit -m "$COMMIT_MESSAGE" -m "$DESCRIPTION"
git -C $1 push
