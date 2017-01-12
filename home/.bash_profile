##
## DANI'S BASH_PROFILE
##

# AVANT
alias rr="env EXPERIMENTAL_ANALYTICS=1 R"

# BASH
alias bp="vim ~/.bash_profile"

# SUBLIME
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'

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


# OTHER
export NVM_DIR=/Users/dlitov39/.nvm
[ -s $NVM_DIR/nvm.sh ] && . $NVM_DIR/nvm.sh  # This loads nvm

# My scripts
export PATH=~/dotfiles/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# virtualenv
# source /usr/local/bin/virtualenvwrapper.shexport

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH=/Library/Frameworks/Python.framework/Versions/3.5/bin:$PATH
export PATH

