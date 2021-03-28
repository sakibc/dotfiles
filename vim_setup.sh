#!/usr/bin/env bash

# Set up vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# idempotent
nvim --headless +PlugInstall +qa

# # TODO: automatically run compilation
# # TODO: install nvim python requirement
# # TODO: install universal ctags

# echo "YouCompleteMe has a compiled component. Please go to ~/.local/share/nvim/plugged/YouCompleteMe and run"
# echo "  python3 install.py --all"
# echo "to complete the installation."
