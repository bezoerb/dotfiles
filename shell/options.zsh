# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="pure"

# Disable command autocorrection
DISABLE_CORRECTION="true"

# Fix key bindings for (Home/End) keys
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

# plugins
plugins=(git history colorize gitignore)

# hook in oh my zsh
source $ZSH/oh-my-zsh.sh

# Include filenames beginning with a `.` in the results of pathname expansion.
setopt dotglob

# increase max open files
#ulimit -n 65536
#ulimit -u 2048

zstyle ':completion:*' use-cache yes
