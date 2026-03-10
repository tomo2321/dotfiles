# Bind Ctrl-x Ctrl-e to edit the current command line in an external editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line
