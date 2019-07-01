# Automatically start zsh if csh was loaded as an interactive shell
# From https://unix.stackexchange.com/questions/26556/changing-the-default-shell-without-chsh-or-administrator-privileges

if ($?prompt) then
  set PATH_TO_ZSH=`which zsh`

  if (-x $PATH_TO_ZSH) then
    exec $PATH_TO_ZSH -l
  endif
endif