
### Contents below copied from dotfiles .zshrc

# setup color vars
BLACK='%F{black}'
BLUE='%F{blue}'
CYAN='%F{cyan}'
GREEN='%F{green}'
MAGENTA='%F{magenta}'
RED='%F{red}'
WHITE='%F{white}'
YELLOW='%F{yellow}'
REMOVE='%f'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT="${MAGENTA}[EMBEDITOR] \${vcs_info_msg_0_} $GREEN%1d$REMOVE: "

### Contents above copied from dotfiles .zshrc
