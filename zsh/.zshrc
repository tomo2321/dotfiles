ZSHRC_REAL_DIR="${${(%):-%N}:A:h}"

[ -f "$ZSHRC_REAL_DIR/export.zsh" ] && source "$ZSHRC_REAL_DIR/export.zsh"
[ -f "$ZSHRC_REAL_DIR/alias.zsh" ] && source "$ZSHRC_REAL_DIR/alias.zsh"
[ -f "$ZSHRC_REAL_DIR/function.zsh" ] && source "$ZSHRC_REAL_DIR/function.zsh"
