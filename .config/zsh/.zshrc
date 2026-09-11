# =========================================================
# History
# =========================================================

HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# =========================================================
# Shell behaviour
# =========================================================

setopt AUTOCD
setopt NOBEEP
# sort file10 after file9, not after file1
setopt NUMERIC_GLOB_SORT
# Use vim style line editing in zsh
bindkey -v 

# =========================================================
# Smart directory navigation
# =========================================================

if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

# =========================================================
# Completion
# =========================================================
# Load completion system
autoload -Uz compinit
# Initialize completion with cached metadata file
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump" 

# Enable interactive completion menu selection
zstyle ':completion:*' menu select 

# Make completion case-insensitive
# Example: "doc" can complete to "Documents"
# lowercase input matches upper and lower
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# =========================================================
# Fuzzy finder
# =========================================================

if command -v fzf >/dev/null 2>&1; then
  source <(fzf --zsh) &>/dev/null
fi

# =========================================================
# Modular Config Files
# =========================================================

source "$ZDOTDIR/fzf.zsh"
source "$ZDOTDIR/aliases.zsh"
# Bindings must be set before plugins so that custom hooks works
source "$ZDOTDIR/bindings.zsh"
source "$ZDOTDIR/plugins.zsh"
source "$ZDOTDIR/prompt.zsh"

# Allow local customizations
if [[ -f "$ZDOTDIR/.zshrc_local" ]]; then
  # Ignore `cat`` alias with double quotes
  "cat" "$ZDOTDIR/.zshrc_local"
fi

# =========================================================
# Signature
# =========================================================

if [[ -f "$XDG_DATA_HOME/signature.asc" ]]; then
  # Ignore `cat`` alias with double quotes
  "cat" "$XDG_DATA_HOME/signature.asc"
fi
