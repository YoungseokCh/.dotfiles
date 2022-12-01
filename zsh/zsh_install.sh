#!/bin/sh
if ! type zsh &> /dev/null; then
  sudo apt install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -e "$HOME/.zshrc" ] ; then
  ln -sf "$DOTFILES_DIR/zshrc" $HOME/.zshrc
  source $HOME/.zshrc
fi

if [ ! -e "$HOME/.zshenv" ] ; then
  ln -sf "$DOTFILES_DIR/zshenv" $HOME/.zshenv
  source $HOME/.zshenv
fi
