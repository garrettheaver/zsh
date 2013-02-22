alias ll='ls -al'
alias rspec='rspec --color'
alias cll='clear && ll'
alias shotgun='shotgun -o 0.0.0.0'

export CLICOLOR=TRUE
export PATH=/usr/local/bin:$HOME/.rvm/bin:/usr/texbin:$PATH

export VIM_APP_DIR=/Applications/MacVim
export EDITOR=vi

export USE_GIT=true

# the ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# play version manager
[[ -s "$HOME/.pvm/pvm.sh" ]] && . "$HOME/.pvm/pvm.sh"

# node version manager
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

# secret env variables
[[ -s "$HOME/.zsh/secret" ]] && . "$HOME/.zsh/secret"

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath
