#!/usr/bin/env bash

PATH_TO_VIM_PLUG=$HOME/.local/share/nvim/site/autoload/plug.vim

# one-time download
if [[ ! -f $PATH_TO_VIM_PLUG ]]; then
  echo "Installing vim-plug..."
  curl -fLo $PATH_TO_VIM_PLUG --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# idempotent
nvim --headless +PlugInstall +qa

echo "YouCompleteMe has a compiled component. Please go to ~/.local/share/nvim/plugged/YouCompleteMe and run"
echo "  python3 install.py --all"
echo "to complete the installation."
