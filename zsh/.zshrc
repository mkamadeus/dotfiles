# shellcheck disable=SC1090,SC1091

# ====== KEYBINDS ======
bindkey "^[[1;3C" forward-word # option + <-
bindkey "^[[1;3D" backward-word # option + ->
bindkey '^[[H' beginning-of-line # home
bindkey '^[[F' end-of-line # end

# ====== OH-MY-ZSH ======
# shellcheck disable=SC2034
plugins=(
  z
  git
  aws
  terraform
  zsh-autosuggestions
  zsh-syntax-highlighting
  kubectl
  kubectx
  ripgrep
  asdf
)

# shellcheck disable=SC1091
source "$ZSH/oh-my-zsh.sh"

# ====== ALIAS ======
for file in "$HOME/.zshalias"/*.zsh; do
  source "$file"
done

# ====== GO ======
GOROOT_BASE=$(asdf where golang)
export GOPATH="$HOME/go"
export GOROOT="$GOROOT_BASE/go/"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOROOT/bin:$GOBIN:$GOPATH"

# ====== AWS-VAULT CONFIG ======
export AWS_SDK_LOAD_CONFIG=1
export AWS_SESSION_TOKEN_TTL="8h"
export AWS_ASSUME_ROLE_TTL="1h"

# ====== RUST ======
export PATH="$PATH:$HOME/.cargo/bin"

# ====== FZF ======
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ====== K9S ======
export K9S_CONFIG_DIR="$HOME/.config/k9s"

# ====== PRIVATE CONFIG =====
if [[ -f "$HOME/.zshrc_private" ]]; then
  source "$HOME/.zshrc_private"
fi

# ====== STARSHIP ======
eval "$(starship init zsh)"

