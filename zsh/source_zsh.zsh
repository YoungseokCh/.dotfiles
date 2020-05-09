#!/usr/bin/zsh
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf "$DOTFILES_DIR/zshrc" $HOME/.zshrc
source $HOME/.zshrc
