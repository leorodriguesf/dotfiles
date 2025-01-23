# Use vim style line editing in zsh
bindkey -v

tmux-sessionizer-widget() {
    exec </dev/tty
    exec <&1
    tmux-sessionizer
    zle redisplay
}

zle -N tmux-sessionizer-widget
bindkey -M emacs '^F' tmux-sessionizer-widget
bindkey -M vicmd '^F' tmux-sessionizer-widget
bindkey -M viins '^F' tmux-sessionizer-widget

tmux-query-widget() {
    exec </dev/tty
    exec <&1
    tmux-query
    zle redisplay
}

zle -N tmux-query-widget
bindkey -M emacs '^G' tmux-query-widget
bindkey -M vicmd '^G' tmux-query-widget
bindkey -M viins '^G' tmux-query-widget
