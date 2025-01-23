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
bindkey -M emacs '^Y' tmux-query-widget
bindkey -M vicmd '^Y' tmux-query-widget
bindkey -M viins '^Y' tmux-query-widget

tmuxpt-widget() {
    exec </dev/tty
    exec <&1
    tmuxpt
    zle redisplay
}

zle -N tmuxpt-widget
bindkey -M emacs '^G' tmuxpt-widget
bindkey -M vicmd '^G' tmuxpt-widget
bindkey -M viins '^G' tmuxpt-widget
