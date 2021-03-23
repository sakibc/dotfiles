#!/usr/bin/env zsh

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew install tmux neovim pstree
  git clone https://github.com/wookayin/is_mosh.git ~/.config/is_mosh
fi
