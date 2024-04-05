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