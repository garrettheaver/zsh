alias ll='ls -al'
alias rspec='rspec --color'
alias cll='clear && ll'

export CLICOLOR=TRUE
export PATH=/usr/local/bin:$HOME/.rvm/bin:/usr/texbin:$PATH

export VIM_APP_DIR=/Applications/MacVim
export EDITOR=vi

export USE_GIT=true

# pull in the ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# pull in the secret env variables
[[ -s "$HOME/.zsh/secret" ]] && . "$HOME/.zsh/secret"

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath
