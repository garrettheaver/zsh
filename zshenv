# linux only alias
if [[ `uname` == "Linux" ]]; then
  alias ls="ls --color=auto"
fi

# simple commands
alias ts='date -u "+%Y%m%d%H%M%S"'
alias ll='ls -al'

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export CLICOLOR=TRUE
export EDITOR=vim

# enable zgit
export USE_GIT=true

# homebrew on macOS
if [ -s "/opt/homebrew/bin/brew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# node version manager
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  . "$HOME/.nvm/nvm.sh"
  . "$HOME/.nvm/bash_completion"
fi

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

