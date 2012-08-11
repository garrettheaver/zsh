setopt prompt_subst

autoload -U zgit; zgit
autoload -U zsvn; zsvn
autoload -U zsig; zsig
autoload -U zcolors; zcolors
autoload -U promptinit; promptinit
autoload -U colors; colors
autoload -U zcuts; zcuts

# red, green, blue, white, yellow, magenta, cyan, black, default
PROMPT="$zc[cyan]%m$zc[white]:$zc[green]%n"
PROMPT+="\$(zgit_prompt)"
PROMPT+="\$(zsvn_prompt)"
PROMPT+="$zc[white]:$zc[yellow]%1~ %% $zc[reset]"

