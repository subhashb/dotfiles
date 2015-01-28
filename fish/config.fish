set -g -x PATH /usr/local/bin $PATH

# Paths
# While you can use a single fish array to do this (space-separated list), this is easier to read
set PATH ~/.rbenv/bin /usr/local/bin /usr/local/sbin $HOME/.bin $PATH

# rbenv configuration
set -gx RBENV_ROOT ~/.rbenv
. (rbenv init -|psub)

# Emacsclient Config
set EDITOR emacsclient -c
set ALTERNATE_EDITOR ""
set VISUAL $EDITOR
alias ec "emacsclient -c -n"

alias gs "git status"
alias gd "git diff"
alias gp "git push origin "
alias gu "git pull origin "
alias ga "git add ."
alias gc "git commit"
alias gch "git checkout"
alias gf "git fetch"

alias b "bundle"

