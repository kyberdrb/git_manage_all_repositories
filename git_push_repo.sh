#!/bin/bash

if [ "$#" -lt 2 ]; then
  echo "Bad number of arguments"
  echo "Usage"
  echo "./git_push_repo <repo_directory> <commit_message> [commit_description]"
  echo "e.g."
  echo \
    "./git_push_repo ~/github/git_repo \"commit message\" \"commit description\""
  exit 1
fi

REPO_DIR=$1
COMMIT_MESSAGE=$2
DESCRIPTION=$3

git -C $REPO_DIR pull
git -C $REPO_DIR status
read -rsn1 -p \
  "Press any key to push changes to the repository or Ctrl+C to abort..."
echo
git -C $REPO_DIR add -A
git -C $REPO_DIR commit -m "$COMMIT_MESSAGE" -m "$DESCRIPTION"
git -C $REPO_DIR push
