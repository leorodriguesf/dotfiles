# zsh-vi-mode resets all bindings on init, so custom bindings
# must be registered via this hook to survive.
zvm_after_init() {
  # Up/Down -> history search by substring (^[[A/^[[B are up/down arrow escape codes)
  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down

  # Create wrapper function to be used as a ZLE widget
  tmux-sessionizer-widget() {
      exec </dev/tty
      exec <&1
      tmux-sessionizer
      zle redisplay
  }

  # Register the function as a ZLE widget
  zle -N tmux-sessionizer-widget

  zvm_bindkey viins '^F' tmux-sessionizer-widget
  zvm_bindkey vicmd '^F' tmux-sessionizer-widget
  zvm_bindkey visual '^F' tmux-sessionizer-widget
}