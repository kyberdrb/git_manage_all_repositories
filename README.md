# Manage all repositories at once
## git_pull_all.sh
Pulls all repositories in a folder.

USAGE:  

./git_pull_all.sh <folder_with_git_repos>

Let's say we have all git repositories saved in ~/github directory. Then 
run this script like this:

./git_pull_all.sh ~/github

## git_status_all.sh
Shows the status of all repositories in a folder. Useful if you need to 
know, which repositories need to be pushed.

USAGE:  
./git_status_all.sh <folder_with_git_repos>

## git_push_repo.sh
Pushes a repository to the server.

USAGE:
./git_push_repo.sh <folder_with_git_repos> <commit_message>

e.g.

./git_push_repo.sh ~/github "testing commit message"
