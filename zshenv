alias ll='ls -al'
alias rspec='rspec --color'
alias cll='clear && ll'

export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
export EC2_URL="https://ec2.eu-west-1.amazonaws.com"

export CLICOLOR=TRUE
export PATH=/usr/local/bin:$HOME/.rvm/bin:/usr/texbin:$PATH

export VIM_APP_DIR=/Applications/MacVim
export EDITOR=vi

# pull in the ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# pull in the secret env variables
[[ -s "$HOME/.zsh/secret" ]] && . "$HOME/.zsh/secret"

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath
