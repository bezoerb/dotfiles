
# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Prefer German and use UTF-8
export LC_ALL="de_DE.UTF-8"
export LANG="de_DE"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Symfony default environments
export SYMFONY_ENV=dev
export SYMFONY_DEBUG=true

# Fix for phantomjs
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig
export EDITOR=/usr/bin/vim