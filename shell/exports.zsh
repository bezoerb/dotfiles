
# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Prefer German and use UTF-8
export LC_ALL="de_DE.UTF-8"
export LANG="de_DE"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"


# Fix for phantomjs
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig
export EDITOR=/usr/bin/vim

export ANDROID_HOME=~/Library/Android/sdk 

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm