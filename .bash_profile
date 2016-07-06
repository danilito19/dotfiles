##
## DANI'S BASH_PROFILE
##

# AVANT
alias rr="env EXPERIMENTAL_ANALYTICS=1 R"

# BASH
alias bp="vim ~/.bash_profile"

# GIT
alias c-master='git checkout master'
alias c-master='git checkout master'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
function gcm() {
    git commit -m "$1"
}


# opens websites
function avantcal() { open /Applications/Google\ Chrome.app/ "https://calendar.google.com/calendar/render?mode=day&date=20160620T032918#main_7%7Cweek"; }
function google() { open /Applications/Google\ Chrome.app/ "http://www.google.com/search?q= $1"; }

# OTHER
export NVM_DIR="/Users/dlitov39/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# My scripts
export PATH="~/dotfiles/bin:$PATH"