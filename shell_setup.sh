#!/usr/bin/env bash

PATH_TO_ZSH="$(command -v zsh)" 

if [ ! -z $PATH_TO_ZSH ] && [ -x $PATH_TO_ZSH ]; then
  if [[ -d "$HOME/.oh-my-zsh" ]]; then
    echo "Oh My Zsh is already installed."
  else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
else
  # Set up bash-it instead
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  $HOME/.bash_it/install.sh --no-modify-config
fi
