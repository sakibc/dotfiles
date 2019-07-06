#!/usr/bin/env bash

PATH_TO_ZSH=command -v zsh >/dev/null 2>&1

if [ ! -z $PATH_TO_ZSH ] && [ -x $PATH_TO_ZSH ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
