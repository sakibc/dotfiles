#!/usr/bin/env bash

# Set up Oh My Zsh
if [[ -d "$HOME/.oh-my-zsh" ]]; then
  echo "Oh My Zsh is already installed."
else
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Set up Bash-it
if [[ -d "$HOME/.bash_it" ]]; then
  echo "Bash-it is already installed."
else
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  $HOME/.bash_it/install.sh --no-modify-config
fi
