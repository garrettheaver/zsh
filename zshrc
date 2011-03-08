setopt prompt_subst

autoload -U zgit
zgit

autoload -U zsig
zsig

autoload -U promptinit
promptinit

autoload -U colors
colors

# red, green, blue, white, yellow, magenta, cyan, black, default

PS1="$fg[cyan]%m$fg[white]:$fg[green]%n$fg[white]"
PS1+="\$(zsig_prompt)"
PS1+="\$(zgit_prompt)"
PS1+="$fg[white]:$fg[yellow]%1~ %% $fg[default]"