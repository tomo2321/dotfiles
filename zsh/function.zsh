function decrypt-pdf() {
  if [ "$#" -ne 2 ]; then
    echo "Usage: decrypt-pdf <input.pdf> <output.pdf>"
    return 1
  fi
  qpdf --decrypt "$1" "$2"
}

function dump-brewfile() {
  DOTFILES_DIR="${${(%):-%N}:A:h}"
  brew bundle dump --file="$DOTFILES_DIR/homebrew/Brewfile" --force
}
