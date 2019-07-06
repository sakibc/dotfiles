#!/usr/bin/env bash

PATH_TO_ZSH=which zsh

if [ -x $PATH_TO_ZSH ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi