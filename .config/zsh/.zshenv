
# Define and export XDG Base Directories with official fallbacks
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"

export EDITOR=nvim
export VISUAL=nvim

export GPG_TTY=$(tty)

# Make man page colorized and nicer looking
# Use 'bat' for man pages; strip legacy bold 
# formatting (^H) so it renders cleanly
if command -v bat >/dev/null 2>&1; then
  export MANPAGER="col -bx | bat -l man -p"
  export MANROFFOPT="-c"
elif command -v batcat >/dev/null 2>&1; then
  # Handle batcat on Ubuntu
  export MANPAGER="col -bx | batcat -l man -p"
  export MANROFFOPT="-c"
fi

export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"

export PATH="$HOME/.local/bin:$PATH"

