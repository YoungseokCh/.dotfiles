#!/bin/bash

if ! [ command -v zsh &> /dev/null ]; then
  sudo apt install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm $HOME/.zshrc
ln -sf "$DOTFILES_DIR/zshrc" $HOME/.zshrc
source $HOME/.zshrc

rm $HOME/.zshenv
ln -sf "$DOTFILES_DIR/zshenv" $HOME/.zshenv
source $HOME/.zshenv

