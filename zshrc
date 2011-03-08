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

PROMPT="%{$fg[cyan]%}%m%{$fg[white]%}:%{$fg[green]%}%n"
PROMPT+="\$(zsig_prompt)"
PROMPT+="\$(zgit_prompt)"
PROMPT+="%{$fg[white]%}:%{$fg[yellow]%}%1~ %% %{$fg[default]%}"

RPROMPT="%{$fg[green]%}%h%{$fg[default]%}"