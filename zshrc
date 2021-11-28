export EDITOR=vim
export CLICOLOR=TRUE
export USE_GIT=true

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath

# linux only alias
if [[ `uname` == "Linux" ]]; then
  alias ls="ls --color=auto"
fi

# simple posix alias commands
alias ts='date -u "+%Y%m%d%H%M%S"'
alias ll='ls -al'

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

# secret env variables
[[ -s "$HOME/.zsh/secret" ]] && . "$HOME/.zsh/secret"

# ruby version manager
if [ -s "$HOME/.rvm" ]; then
  export PATH="$PATH:$HOME/.rvm/bin"
  . "$HOME/.rvm/scripts/rvm"
fi

setopt prompt_subst

autoload -U zgit; zgit
autoload -U zsvn; zsvn
autoload -U zmer; zmer
autoload -U zsig; zsig
autoload -U zcolors; zcolors
autoload -U promptinit; promptinit
autoload -U colors; colors
autoload -U zcuts; zcuts

HISTSIZE=1000
SAVEHIST=1000

# red, green, blue, white, yellow, magenta, cyan, black, default
PROMPT="$zc[cyan]%m$zc[white]:$zc[green]%n"
PROMPT+="\$(zgit_prompt)"
PROMPT+="\$(zsvn_prompt)"
PROMPT+="\$(zmer_prompt)"
PROMPT+="$zc[white]:$zc[yellow]%1~ %% $zc[reset]"
