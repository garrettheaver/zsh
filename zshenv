alias ll='ls -al'

export CLICOLOR=TRUE
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql90/bin/:$PATH

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath