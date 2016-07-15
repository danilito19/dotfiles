##
## DANI'S BASH_PROFILE
##

# AVANT
alias rr="env EXPERIMENTAL_ANALYTICS=1 R"

# BASH
alias bp="vim ~/.bash_profile"

# GIT
alias c-master='git checkout master'
alias brr="git branch"
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
function gcm() {
    git commit -m "$1"
}

# cd aliases
alias cddev="cd /dev”

# POSTGRESQL
# alias pginit="initdb /usr/local/var/postgres -E utf8 -U mike"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgstatus="pg_ctl -D /usr/local/var/postgres status"
alias pg="psql -h localhost -d postgres"


# opens websites
function avantcal() { open /Applications/Google\ Chrome.app/ "https://calendar.google.com/calendar/render?mode=day&date=20160620T032918#main_7%7Cweek"; }
function google() { open /Applications/Google\ Chrome.app/ "http://www.google.com/search?q= $1"; }

# OTHER
export NVM_DIR="/Users/dlitov39/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# My scripts
export PATH="~/dotfiles/bin:$PATH"
