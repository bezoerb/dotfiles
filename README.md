# Bens's dotfiles

This repo contains *my* dotfiles. It is heavily based on [necolas](https://github.com/necolas/dotfiles)'s and it's also still work in progress.

## Main differences

* `oh-my-zsh` instead of `bash`


## How to install  

The installation step <!-- requires the [XCode Command Line
Tools](https://developer.apple.com/downloads) and --> may overwrite existing
dotfiles in your HOME and `.vim` directories.

```bash
$ bash -c "$(curl -fsSL raw.github.com/bezoerb/dotfiles/main/bin/dotfiles)"
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



### Custom macOS defaults

Custom OS X settings can be applied during the `dotfiles` process. They can
also be applied independently by running the following command:

```bash
$ macosdefaults
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
