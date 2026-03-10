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

XDG_CONFIG_HOME="$HOME/.config"
mkdir -p $XDG_CONFIG_HOME

ln -s $DOTFILES_DIR/zsh/.zshenv ~/.zshenv
ln -s $DOTFILES_DIR/zsh/.zprofile ~/.zprofile
ln -s $DOTFILES_DIR/zsh/.zshrc ~/.zshrc
ln -s $DOTFILES_DIR/zsh/.zlogin ~/.zlogin

TMUX_CONFIG_DIR="$XDG_CONFIG_HOME/tmux"
mkdir -p $TMUX_CONFIG_DIR

ln -s $DOTFILES_DIR/tmux/.tmux.conf $TMUX_CONFIG_DIR/tmux.conf
ln -s $DOTFILES_DIR/tmux/.tmux.conf.local $TMUX_CONFIG_DIR/tmux.conf.local

ln -s $DOTFILES_DIR/vimrc ~/.vimrc
ln -s $DOTFILES_DIR/vim ~/.vim
ln -s $DOTFILES_DIR/git/.gitconfig ~/.gitconfig
ln -s $DOTFILES_DIR/git/.gitignore ~/.gitignore
ln -s $DOTFILES_DIR/starship/starship.toml $XDG_CONFIG_HOME/starship.toml
if [ "$(which -a nvim)" ]; then
  mkdir -p ~/.config/nvim
  ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
fi

if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi

echo "Installing Homebrew packages from Brewfile..."
brew bundle --file=$DOTFILES_DIR/homebrew/Brewfile
