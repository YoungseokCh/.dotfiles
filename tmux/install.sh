#!/bin/sh

if ! type tmux &> /dev/null; then
  sudo apt install tmux
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -e "$HOME/.tmux.conf" ] ; then
  ln -sf "$DIR/tmux.conf" $HOME/.tmux.conf
fi

if [ ! -d "$HOME/.tmux/plugins/tpm" ] ; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi


echo "Type prefix + I to apply plugins"

