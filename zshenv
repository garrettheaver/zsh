alias ll='ls -al'
alias rspec='rspec --color'

export CLICOLOR=TRUE
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql90/bin:$HOME/.rvm/bin:/usr/texbin:$PATH
export EDITOR=vi

# pull in the ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath
