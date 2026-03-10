function decrypt-pdf() {
  if [ "$#" -ne 2 ]; then
    echo "Usage: decrypt-pdf <input.pdf> <output.pdf>"
    return 1
  fi
  qpdf --decrypt "$1" "$2"
}
