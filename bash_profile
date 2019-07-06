# From https://unix.stackexchange.com/questions/136423/making-zsh-default-shell-without-root-access

PATH_TO_ZSH=command -v zsh >/dev/null 2>&1

preferred_shell=
if [ -n $PATH_TO_ZSH ] && [ -x $PATH_TO_ZSH ]; then
  preferred_shell=$PATH_TO_ZSH
fi

if [ -n "$preferred_shell" ]; then
  case $- in
    *i*) SHELL=$preferred_shell; export SHELL; exec "$preferred_shell";;
  esac
elif [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi