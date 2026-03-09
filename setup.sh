#!/bin/bash

if [[ "$OSTYPE" != "darwin"* ]]; then
  echo "Warning: This script is intended for macOS only."
  exit 1
fi

if ! command -v zsh &>/dev/null; then
  echo "Warning: zsh is not installed."
  exit 1
fi

chsh -s /bin/zsh

DOTFILES_DIR="$(cd $(dirname "$0") && pwd)"

ln -s $DOTFILES_DIR/.zprofile ~/.zprofile
ln -s $DOTFILES_DIR/.zshrc ~/.zshrc
ln -s $DOTFILES_DIR/vimrc ~/.vimrc
ln -s $DOTFILES_DIR/vim ~/.vim
ln -s $DOTFILES_DIR/gitconfig ~/.gitconfig
ln -s $DOTFILES_DIR/global-gitignore ~/.gitignore
if [ "$(which -a nvim)" ]; then
  mkdir -p ~/.config/nvim
  ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
fi
