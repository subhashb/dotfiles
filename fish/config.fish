set -g -x PATH /usr/local/bin $PATH

# Paths
# While you can use a single fish array to do this (space-separated list), this is easier to read
set PATH /usr/local/bin /usr/local/sbin $HOME/.bin $HOME/.rvm/bin $PATH

alias gs "git status"
alias gd "git diff"
alias gp "git push origin "
alias gu "git pull origin "
alias ga "git add ."
alias gc "git commit"

alias b "bundle"
