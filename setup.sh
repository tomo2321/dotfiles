#!/bin/bash

chsh -s /bin/bash
apt update
apt install -y --no-install-recommends \
  git \
  neovim \
  screen \
  tmux

mkdir ~/tmp

ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/global-gitignore ~/.gitignore
if [ "$(which -a nvim)" ]; then
  mkdir -p ~/.config/nvim
  ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
fi

