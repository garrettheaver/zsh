alias ll='ls -al'
alias ts='date -u "+%Y%m%d%H%M%S"'

# ruby specific aliases
alias shotgun='bundle exec shotgun -o 0.0.0.0'
alias rackup='bundle exec rackup -p 9393'
alias rspec='bundle exec rspec --color'
alias rake='bundle exec rake'

# python specific
export PYTHONPATH="$PYTHONPATH:./"
alias pybot="/usr/local/bin/pybot -v SERVER:'0.0.0.0:8000'"

export CLICOLOR=TRUE
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/.rvm/bin:/usr/texbin:/usr/local/heroku/bin:$PATH
export EDITOR=vim

export USE_GIT=true

# travis management gem
[[ -s "$HOME/.travis/travis.sh" ]] && . "$HOME/.travis/travis.sh"

# play version manager
[[ -s "$HOME/.pvm/pvm.sh" ]] && . "$HOME/.pvm/pvm.sh"

# node version manager
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

# python env manager
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# the ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# secret env variables
[[ -s "$HOME/.zsh/secret" ]] && . "$HOME/.zsh/secret"

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath

