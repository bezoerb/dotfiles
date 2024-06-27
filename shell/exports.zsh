# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Prefer German and use UTF-8
export LC_ALL="de_DE.UTF-8"
export LANG="de_DE"

export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

# Make vim the default editor.
export EDITOR=/usr/bin/vim

export ANDROID_HOME=~/Library/Android/sdk

export JAVA_HOME=$(/usr/libexec/java_home -v1.8)

export PYTHON=`which python3`

# Avoid issues with `gpg` as installed via Homebrew.
# https://stackoverflow.com/a/42265848/96656
export GPG_TTY=$(tty)

# Enable persistent REPL history for `node`.
export NODE_REPL_HISTORY=~/.node_history
# Allow 32³ entries; the default is 1000.
export NODE_REPL_HISTORY_SIZE='32768'
# Use sloppy mode by default, matching web browsers.
export NODE_REPL_MODE='sloppy'

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8'

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768'
export HISTFILESIZE="${HISTSIZE}"
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth'

eval "$(fnm env)"

export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

export JAVA_HOME=`/usr/libexec/java_home -v 17`

FD_OPTIONS="--follow --exclude .git --exclude node_modules"

export FZF_DEFAULT_OPTS="--no-mouse --height 50% -1 --reverse --multi --inline-info --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat --style=numbers {}} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)'"

# Use git-ls-files inside git repo, otherwise fd
export FZF_DEFAULT_COMMAND="git ls-files --cached --others --exclude-standard | fd --type f --type l $FD_OPTIONS"
export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FDOPTIONS"
export BAT_PAGER="less -R"