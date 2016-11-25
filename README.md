# Bens's dotfiles

This repo contains *my* dotfiles. It is heavily based on [necolas](https://github.com/necolas/dotfiles)'s and it's also still work in progress.

## Main differences

* `oh-my-zsh` instead of `bash`


## How to install

The installation step <!-- requires the [XCode Command Line
Tools](https://developer.apple.com/downloads) and --> may overwrite existing
dotfiles in your HOME and `.vim` directories.

```bash
$ bash -c "$(curl -fsSL raw.github.com/bezoerb/dotfiles/master/bin/dotfiles)"
```

N.B. If you wish to fork this project and maintain your own dotfiles, you must
substitute my username for your own in the above command and the 2 variables
found at the top of the `bin/dotfiles` script.

## How to update

You should run the update when:

* You make a change to `~/.dotfiles/git/gitconfig` (the only file that is
  copied rather than symlinked).
* You want to pull changes from the remote repository.
* You want to update Homebrew formulae and Node packages.

Run the dotfiles command:

```bash
$ dotfiles
```


Options:

<table>
    <tr>
        <td><code>-h</code>, <code>--help</code></td>
        <td>Help</td>
    </tr>
    <tr>
        <td><code>--no-packages</code></td>
        <td>Suppress package updates</td>
    </tr>
    <tr>
        <td><code>--no-sync</code></td>
        <td>Suppress pulling from the remote repository</td>
    </tr>
</table>


## Features

### Automatic software installation

Homebrew formulae:

* GNU core utilities
* [git](http://git-scm.com/)
* [hub](https://github.com/github/hub)
* [git-extras](https://github.com/tj/git-extras)
* dnsmasq
* libmemcached
* zsh
* bash (latest version)
* [bash-completion](http://bash-completion.alioth.debian.org/)
* [tree](https://linux.die.net/man/1/tree)
* [ack](http://betterthangrep.com/)
* gnu-sed (GNU version of sed)
* grep (GNU grep)
* screen (GNU screen)
* [wget](http://www.gnu.org/software/wget/)
* mtr (ping & traceroute. best)
* php56 + modules: imagick, intl, xdebug, mcrypt, memcached, opcache, apcu
* php70 + modules: imagick, intl, xdebug, mcrypt, memcached, opcache, apcu
* [xdebug-osx](https://github.com/w00fz/xdebug-osx)
* [python](https://www.python.org/)
* [node](http://nodejs.org/)
* [yarn](https://yarnpkg.com/)
* [mariadb](https://mariadb.org/)
* [macvim](http://code.google.com/p/macvim/)
* [rsync](https://rsync.samba.org/) (latest version, rather than the out-dated OS X installation)
* ssh-copy-id
* testssl
* [rename](http://plasmasturm.org/code/rename/)
* [ffmpeg](http://ffmpeg.org/)
* [imagemagick](http://www.imagemagick.org/)
* [graphicsmagick](http://www.graphicsmagick.org/)
* [jpeg](https://en.wikipedia.org/wiki/Libjpeg)
* [optipng](http://optipng.sourceforge.net/)
* [zopfli](https://github.com/google/zopfli)

Cask:

* spectacle
* dropbox
* flux
* alfred
* caffeine
* slack
* xquarts
* iterm2
* sublime-text
* atom
* webstorm
* phpstorm
* visual-studio-code
* imagealpha
* imageoptim
* sequel-pro
* ngrok
* dash
* sketch
* caprine
* google-chrome
* google-chrome-canary
* firefox
* firefoxnightly
* webkit-nightly
* gpgtools
* reeder
* licecap
* transmission
* qlcolorcode
* qlstephen
* qlmarkdown
* quicklook-json
* qlprettypatch
* quicklook-csv
* betterzipql
* webpquicklook
* suspicious-package

Node packages:

* [gify](https://github.com/visionmedia/node-gify)
* [yo](http://yeoman.io/)
* [gulp](http://gulpjs.com/)
* [grunt](http://gruntjs.com/)
* [bower](https://bower.io/)
* [jspm](http://jspm.io/)
* [ava](https://github.com/avajs/ava)
* [xo](https://github.com/sindresorhus/xo)
* [eslint](http://eslint.org/)

Additional:

* [sphp](https://gist.github.com/w00fz/142b6b19750ea6979137b963df959d11) php switcher script
* [oh-my-zsh](http://ohmyz.sh/)
* [Dropbox-Uploader](https://github.com/andreafabrizi/Dropbox-Uploader)
* [wp-cli](https://wp-cli.org/)
* [SpoofMAC](https://github.com/feross/SpoofMAC)
* [pygments](http://pygments.org/)
* [git-friendly](https://github.com/jamiew/git-friendly)



### Custom OS X defaults

Custom OS X settings can be applied during the `dotfiles` process. They can
also be applied independently by running the following command:

```bash
$ osxdefaults
```

## Acknowledgements

Inspiration and code was taken from many sources, including:

* [@necolas](https://github.com/necolas) (Nicolas Gallagher)
  [https://github.com/necolas/dotfiles](https://github.com/necolas/dotfiles)
* [@addyosmani](https://github.com/addyosmani) (Addy Osmani)
  [https://github.com/addyosmani/dotfiles](https://github.com/addyosmani/dotfiles)
* [@paulirish](https://github.com/paulirish) (Paul Irish)
  [https://github.com/paulirish/dotfiles](https://github.com/paulirish/dotfiles)
* [@holman](https://github.com/holman) (Zach Holman)
  [https://github.com/holman/dotfiles](https://github.com/holman/dotfiles)
* [@mathiasbynens](https://github.com/mathiasbynens) (Mathias Bynens)
  [https://github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [@tejr](https://github.com/tejr) (Tom Ryder)
  [https://github.com/tejr/dotfiles](https://github.com/tejr/dotfiles)
* [@gf3](https://github.com/gf3) (Gianni Chiappetta)
  [https://github.com/gf3/dotfiles](https://github.com/gf3/dotfiles)
* [@cowboy](https://github.com/cowboy) (Ben Alman)
  [https://github.com/cowboy/dotfiles](https://github.com/cowboy/dotfiles)
* [@alrra](https://github.com/alrra) (Cãtãlin Mariş)
  [https://github.com/alrra/dotfiles](https://github.com/alrra/dotfiles)
