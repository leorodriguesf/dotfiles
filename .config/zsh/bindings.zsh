# zsh-vi-mode resets all bindings on init, so custom bindings
# must be registered via this hook to survive.
zvm_after_init() {
  # Up/Down -> history search by substring (^[[A/^[[B are up/down arrow escape codes)
  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down

  tmux-sessionizer-widget() {
      exec </dev/tty
      exec <&1
      tmux-sessionizer
      zle redisplay
  }

  # 2. Register the function as a ZLE widget
  zle -N tmux-sessionizer-widget

  # 3. Bind CTRL + F to the widget
  bindkey '^F' tmux-sessionizer-widget
}