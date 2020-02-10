#!/usr/bin/env bash

PATH_TO_VIM_PLUG=$HOME/.local/share/nvim/site/autoload/plug.vim

# one-time download
if [[ ! -f $PATH_TO_VIM_PLUG ]]; then
  curl -fLo $PATH_TO_VIM_PLUG --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# idempotent
nvim --headless +PlugInstall +qa
