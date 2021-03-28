# Preconfigure antigen and plugins
# ANTIGEN_LOG=~/.antigen.log
export NVM_LAZY=true

# Load Antigen
source ~/.antigen.zsh

# Load oh-my-zsh defaults
antigen use oh-my-zsh

# Load plugins
antigen bundle command-not-found
antigen bundle colored-man-pages
antigen bundle fzf
antigen bundle nvm
antigen bundle pip
antigen bundle pyenv
antigen bundle sudo
antigen bundle amstrad/oh-my-matrix
antigen bundle rtakasuke/zsh-duration --branch=main
antigen bundle zsh-interactive-cd
antigen bundle zsh_reload
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search

# Set theme
antigen theme robbyrussell

# Finish Antigen
antigen apply

# Export preferred editor if installed
which nvim &>/dev/null
if [[ $? == 0 ]]; then
  export EDITOR='nvim'
fi

# Add time to default prompt
if [[ -z $ZSH_CUSTOM_PROMPT_SET ]]; then
  RPROMPT='[%D{%L:%M:%S}] '$RPROMPT
  export ZSH_CUSTOM_PROMPT_SET=true
fi

# Base16 Shell
if [[ ! -n $IS_MOSH ]] || [[ $IS_MOSH == 0 ]]; then
  BASE16_SHELL="$HOME/.config/base16-shell/"
  [ -n "$PS1" ] && \
      [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
          eval "$("$BASE16_SHELL/profile_helper.sh")"
fi

# Go setup
export GOPATH="$HOME/Documents/go"

# System-specific configuration
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  export PATH="$HOME/Applications/ctags:$PATH"
  export PATH="$HOME/.linuxbrew/bin:$PATH"

  # Allow core dumps
  ulimit -c unlimited

  # systemctl fix for zsh
  _systemctl_unit_state() {
  typeset -gA _sys_unit_state
  _sys_unit_state=( $(__systemctl list-unit-files "$PREFIX*" | awk '{print $1, $2}') ) }

elif [[ "$OSTYPE" == "darwin"* ]]; then
  export BASH_ENV="$HOME/.bashrc"
  alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
  alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
  export PATH="/usr/local/opt/ruby/bin:$PATH"
  export PATH="/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"
fi

# Export user path
export PATH="$PATH:$HOME/.local/bin"

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/sakibchowdhury/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
