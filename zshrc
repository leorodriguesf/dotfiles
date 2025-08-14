source ~/.config/shell/functions.sh

if [ -f ~/.shell_local_before ]; then
    source ~/.shell_local_before
fi

source ~/.config/shell/settings.sh
source ~/.config/shell/bootstrap.sh
source ~/.config/shell/external.sh
source ~/.config/shell/aliases.sh

if [ -f ~/.shell_local_after ]; then
    source ~/.shell_local_after
fi

if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

source ~/.config/zsh/functions.zsh
source ~/.config/zsh/settings.zsh
source ~/.config/zsh/plugins.zsh

if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi

if [ -f ~/.shell_private ]; then
    source ~/.shell_private
fi
