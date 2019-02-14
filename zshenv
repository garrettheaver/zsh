# linux only alias
if [[ `uname` == "Linux" ]]; then
  alias ls="ls --color=auto"
fi

# simple commands
alias ts='date -u "+%Y%m%d%H%M%S"'
alias ll='ls -al'

# ruby specific aliases
alias shotgun='bundle exec shotgun -o 0.0.0.0'
alias rackup='bundle exec rackup -p 9393'
alias rspec='bundle exec rspec --color'
alias rake='bundle exec rake'

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export CLICOLOR=TRUE
export EDITOR=vim

# for zgit
export USE_GIT=true

# play version manager
[[ -s "$HOME/.pvm/pvm.sh" ]] && . "$HOME/.pvm/pvm.sh"

# node version manager
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

# python env manager
if [ -s "$HOME/.pyenv/bin/pyenv" ]; then
  export PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# dotnet core cli
if [ -s "/usr/local/share/dotnet" ]; then
  export PATH="$PATH:/usr/local/share/dotnet"
fi

# ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# secret env variables
[[ -s "$HOME/.zsh/secret" ]] && . "$HOME/.zsh/secret"

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath

