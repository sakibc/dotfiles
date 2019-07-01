# From https://unix.stackexchange.com/questions/136423/making-zsh-default-shell-without-root-access

PATH_TO_ZSH=which zsh

preferred_shell=
if [ -x $PATH_TO_ZSH ]; then
  preferred_shell=$PATH_TO_ZSH
fi
…
if [ -n "$preferred_shell" ]; then
  case $- in
    *i*) SHELL=$preferred_shell; export SHELL; exec "$preferred_shell";;
  esac
fi