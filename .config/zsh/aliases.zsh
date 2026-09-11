# Always create parent
alias mkdir="mkdir -p"

# Protect against overwriting
alias mv="mv -i"
alias cp="cp -i"

if command -v eza >/dev/null 2>&1; then
  # Better ls
  alias ls='eza --icons=auto'

  # Detailed listing
  alias ll='eza -lh --icons=auto --git'

  # Detailed listing
  alias la='eza -lah --icons=auto --git'

  # Tree view
  alias tree='eza --tree --icons=auto'

  # Reuse ls completions for eza
  compdef eza=ls
fi

# =========================================================
# Better cat

# Need to be careful with this one because some scripts that
# rely on `cat` could be conflicted because `bat` adds extra
# stuff that could break parsing logic.

# On Ubuntu the package name is batcat, therefore we need to
# also handle this.
# =========================================================
if command -v bat >/dev/null 2>&1; then
  alias cat='bat'
elif command -v batcat >/dev/null 2>&1; then
  alias bat='batcat'
  alias cat='batcat'
fi

# On Ubuntu the package name is fdfind, therefore we need to
# handle this.
if command -v fdfind >/dev/null 2>&1; then
  alias fd='fdfind'
fi

if command -v rg >/dev/null 2>&1; then
  alias grep='rg --color=auto'
fi

alias diff='diff --color=auto'
alias df='df -h'

# -- prevents - being parsed as a flag; cd - jumps to previous directory
alias -- -='cd -'

alias vim='nvim';