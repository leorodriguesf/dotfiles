# Always create parent
alias mkdir="mkdir -p"

# Protect against overwriting
alias mv="mv -i"
alias cp="cp -i"

# If inside tmux session, onle opens nvim, otherwise, open a new tmux-session with nvim
alias nvim="([ -z "$TMUX" ] && tmux new-session nvim) ||  nvim"
alias vim="nvim"
