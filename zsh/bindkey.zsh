# Bind Ctrl-x Ctrl-e to edit the current command line in an external editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# Bind Ctrl-g to search and navigate to a ghq-managed repository using fzf
# https://zenn.dev/mozumasu/articles/mozumasu-lazy-git
function ghq-fzf() {
  local src=$(ghq list | fzf --preview "bat --color=always --style=header,grid --line-range :80 $(ghq root)/{}/README.*")
  if [ -n "$src" ]; then
    BUFFER="cd $(ghq root)/$src"
    zle accept-line
  fi
  zle -R -c
}
zle -N ghq-fzf
bindkey '^g' ghq-fzf
