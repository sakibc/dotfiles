#!/usr/bin/env bash

PATH_TO_ZSH=command -v zsh >/dev/null 2>&1

if [ ! -z $PATH_TO_ZSH ] && [ -x $PATH_TO_ZSH ]; then
  # TODO: Check if ohmyzsh is already installed as well, to suppress the failure
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  # Set up bash-it instead
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  $HOME/.bash_it/install.sh --no-modify-config
fi
