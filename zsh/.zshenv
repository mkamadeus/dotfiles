export PATH=$PATH:/opt/homebrew/bin
export ZSH="$HOME/.oh-my-zsh"

if hash nvim 2>/dev/null; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

source "$HOME/.cargo/env"
