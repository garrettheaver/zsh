alias ll='ls -al'
alias cll='clear && ll'
alias bgone='kill -9'

# ruby specific aliases
alias shotgun='bundle exec shotgun -o 0.0.0.0'
alias rspec='bundle exec rspec --color'

export CLICOLOR=TRUE
export PATH=/usr/local/bin:$HOME/.rvm/bin:/usr/texbin:/usr/local/heroku/bin:$PATH

export VIM_APP_DIR=/Applications/MacVim
export EDITOR=vim

export USE_GIT=true

# the ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# travis management gem
[[ -s "$HOME/.travis/travis.sh" ]] && . "$HOME/.travis/travis.sh"

# play version manager
[[ -s "$HOME/.pvm/pvm.sh" ]] && . "$HOME/.pvm/pvm.sh"

# node version manager
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

# secret env variables
[[ -s "$HOME/.zsh/secret" ]] && . "$HOME/.zsh/secret"

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath

