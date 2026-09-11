# Only initialize Starship if it is installed and it hasn't been loaded in this session yet
if command -v starship >/dev/null 2>&1 && ! type starship_zle-keymap-select >/dev/null 2>&1; then
    eval "$(starship init zsh)"
fi

