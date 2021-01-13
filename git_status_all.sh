#!/bin/bash

show_help() {
  if [ "$#" -ne 1 ]; then
    echo "Bad number of arguments or bad format of arguments"
    echo "Usage"
    echo "./git_status_all git_root_dir"
    echo "e.g."
    echo "./git_status_all ~/github_root_dir "
    echo "Enter the directory name without quotes to avoid errors"
    exit 1
  fi
}

get_status_of_repositories() {
  local git_repo_dir="$1"

  find $git_repo_dir -name ".git" -type d -exec sh -c 'echo "-------------------------------------" && echo '{}/' | rev | cut -d'/' -f2 --complement | rev' sh {} \; -exec git -C '{}/..' status \;
}

main() {
  show_help $#

  local git_repo_dir="$1"
  get_status_of_repositories "$git_repo_dir"
}

main $@

