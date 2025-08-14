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

if [ -f ~/.bashrc_local_before ]; then
    source ~/.bashrc_local_before
fi

source ~/.config/bash/functions.bash
source ~/.config/bash/settings.bash
source ~/.config/bash/plugins.bash

if [ -f ~/.bashrc_local_after ]; then
    source ~/.bashrc_local_after
fi

if [ -f ~/.shell_private ]; then
    source ~/.shell_private
fi
