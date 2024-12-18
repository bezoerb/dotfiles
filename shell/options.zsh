# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh


autoload -U promptinit; promptinit

# Set name of the theme to load.
ZSH_THEME="pure"


# change the path color
zstyle :prompt:pure:path color white

# change the color for both `prompt:success` and `prompt:error`
#zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

# Disable command autocorrection
DISABLE_CORRECTION="true"

# Fix key bindings for (Home/End) keys
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

# plugins
plugins=(git history colorize gitignore zsh-z)

# hook in oh my zsh
source $ZSH/oh-my-zsh.sh

# Include filenames beginning with a `.` in the results of pathname expansion.
setopt dotglob

# increase max open files
#ulimit -n 65536
#ulimit -u 2048

zstyle ':completion:*' use-cache yes
