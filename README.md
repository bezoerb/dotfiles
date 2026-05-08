# Bens's dotfiles

This repo contains _my_ dotfiles. It is heavily based on [necolas](https://github.com/necolas/dotfiles)'s and it's also still work in progress.

## Highlights

- `oh-my-zsh` with Sindre Sorhus' [pure](https://github.com/sindresorhus/pure) theme and the `zsh-z` plugin
- Curated Homebrew formulae and casks (see [`lib/brew`](lib/brew) and [`lib/cask`](lib/cask))
- Local web stack: Homebrew `httpd` serving `~/Sites`, `dnsmasq` resolving `*.develop`, `*.work`, `*.localhost` to `127.0.0.1`, plus `mkcert` for trusted local TLS
- Touch ID for `sudo` (via `/etc/pam.d/sudo` patch)
- Node tooling via [`pnpm`](https://pnpm.io) — global packages installed with `pnpm add --global`, agent skills restored via `pnpm dlx skills update --global`
- AI agent setup under `~/.agents`: personal agent prompts symlinked from `ai/agents/` and skills rehydrated from `.skill-lock.json` (skills are **not** vendored)
- `git-friendly`, `diff-so-fancy`, `pygments` and various shell helpers under [`shell/functions/`](shell/functions/)

## How to install

The installation step may overwrite existing dotfiles in your `$HOME` and `.vim` directories.

```bash
bash -c "$(curl -fsSL raw.github.com/bezoerb/dotfiles/main/scripts/dotfiles)"
```

If you fork this project, substitute my username for your own in the command above and in the two variables at the top of [`scripts/dotfiles`](scripts/dotfiles).

The installer will:

1. Install the XCode Command Line Tools (if missing)
2. Install Homebrew (if missing) and clone this repo into `~/.dotfiles`
3. Run `run_brew`, `run_cask`, `run_postinstall`, `run_npm`, `run_agents`
4. Symlink dotfiles into `$HOME` and offer to apply [custom macOS defaults](scripts/macosdefaults)

## How to update

Re-run the `dotfiles` command after:

- editing [`git/gitconfig`](git/gitconfig) (the only file that is copied rather than symlinked)
- pulling new changes from upstream
- when you want to update Homebrew formulae, casks and Node packages

```bash
dotfiles
```

### Options

| Flag               | Effect                                                                                  |
| ------------------ | --------------------------------------------------------------------------------------- |
| `-h`, `--help`     | Print help                                                                              |
| `--no-sync`        | Skip pulling from the remote repository                                                 |
| `--no-packages`    | Skip all package installations (brew, cask, npm, agents) and post-install configuration |
| `--no-brew`        | Skip Homebrew formulae install (`run_brew`)                                             |
| `--no-cask`        | Skip Homebrew casks install (`run_cask`)                                                |
| `--no-postinstall` | Skip post-install configuration (`run_postinstall`)                                     |
| `--no-npm`         | Skip global Node package install (`run_npm`)                                            |
| `--no-agents`      | Skip `~/.agents` setup and skill restore (`run_agents`)                                 |

Example — refresh dotfiles and Node packages only:

```bash
dotfiles --no-brew --no-cask --no-postinstall
```

### Custom macOS defaults

Custom macOS settings can be applied during the `dotfiles` run. They can also be applied independently:

```bash
macosdefaults
```

## Repository layout

```
ai/             AI agent prompts, skill lockfile and Claude config
bin/            Personal scripts placed on PATH
git/            Git configuration (copied to $HOME/.gitconfig)
init/           App preference plists (Rectangle, Bartender, Sublime, …)
lib/            Installer modules sourced by scripts/dotfiles
scripts/        Top-level entry points (dotfiles, macosdefaults, …)
shell/          Zsh config, aliases, exports, functions, pure theme
vim/            Vim configuration
vscode/         VS Code keybindings
```

## Acknowledgements

Inspiration and code was taken from many sources, including:

- [@necolas](https://github.com/necolas) (Nicolas Gallagher)
  [https://github.com/necolas/dotfiles](https://github.com/necolas/dotfiles)
- [@addyosmani](https://github.com/addyosmani) (Addy Osmani)
  [https://github.com/addyosmani/dotfiles](https://github.com/addyosmani/dotfiles)
- [@paulirish](https://github.com/paulirish) (Paul Irish)
  [https://github.com/paulirish/dotfiles](https://github.com/paulirish/dotfiles)
- [@holman](https://github.com/holman) (Zach Holman)
  [https://github.com/holman/dotfiles](https://github.com/holman/dotfiles)
- [@mathiasbynens](https://github.com/mathiasbynens) (Mathias Bynens)
  [https://github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [@tejr](https://github.com/tejr) (Tom Ryder)
  [https://github.com/tejr/dotfiles](https://github.com/tejr/dotfiles)
- [@gf3](https://github.com/gf3) (Gianni Chiappetta)
  [https://github.com/gf3/dotfiles](https://github.com/gf3/dotfiles)
- [@cowboy](https://github.com/cowboy) (Ben Alman)
  [https://github.com/cowboy/dotfiles](https://github.com/cowboy/dotfiles)
- [@alrra](https://github.com/alrra) (Cãtãlin Mariş)
  [https://github.com/alrra/dotfiles](https://github.com/alrra/dotfiles)
