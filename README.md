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
./git_push_repo.sh <repo_folder> <commit_message> [commit_description]

e.g. (if I'm already in a repository directory)

./git_push_repo.sh . "testing commit message"


***********************************************

To be able to use these commands without entering full path to them, 
add full path to the scripts to system variables:

  nano ~/.bashrc

And add this line to the end

  export PATH="$PATH:/home/andrej/github/git_manage_all_repositories"

Save and exit.  
Reboot. Now you should see the scripts you've added.

Done :D



Sources:
https://unix.stackexchange.com/questions/162134/how-to-execute-a-bash-script-without-typing
https://help.github.com/articles/merging-an-upstream-repository-into-your-fork/#platform-linux
https://stackoverflow.com/questions/9562304/github-commit-with-extended-message/29380619#29380619
https://unix.stackexchange.com/a/294234  
[GitHub .gitignore not working](https://stackoverflow.com/questions/11451535/gitignore-is-not-working/11451731#11451731)