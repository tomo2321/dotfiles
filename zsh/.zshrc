# .zshrc: Read for interactive shells only.
# Used for aliases, functions, prompts, and UI-related configurations.

ZSHRC_REAL_DIR="${${(%):-%N}:A:h}"

[ -f "$ZSHRC_REAL_DIR/export.zsh" ] && source "$ZSHRC_REAL_DIR/export.zsh"
[ -f "$ZSHRC_REAL_DIR/alias.zsh" ] && source "$ZSHRC_REAL_DIR/alias.zsh"
[ -f "$ZSHRC_REAL_DIR/function.zsh" ] && source "$ZSHRC_REAL_DIR/function.zsh"
[ -f "$ZSHRC_REAL_DIR/eval.zsh" ] && source "$ZSHRC_REAL_DIR/eval.zsh"
[ -f "$ZSHRC_REAL_DIR/set.zsh" ] && source "$ZSHRC_REAL_DIR/set.zsh"
[ -f "$ZSHRC_REAL_DIR/bindkey.zsh" ] && source "$ZSHRC_REAL_DIR/bindkey.zsh"

autoload -Uz compinit; compinit
