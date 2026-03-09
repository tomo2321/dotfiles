#!/bin/bash

if [[ "$OSTYPE" != "darwin"* ]]; then
  echo "Warning: This script is intended for macOS only."
  exit 1
fi

chsh -s /bin/bash

ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/global-gitignore ~/.gitignore
if [ "$(which -a nvim)" ]; then
  mkdir -p ~/.config/nvim
  ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
fi
