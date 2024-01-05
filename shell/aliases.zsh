# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

alias cask='brew cask' # i <3 u cask
alias where=which # sometimes i forget

# typos
alias brwe=brew
alias igt=git

# grow
alias grow='pipenv run grow'

# zsh
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias reload!='. ~/.zshrc'

alias phpconfig="subl /usr/local/etc/php"
alias apacheconfig="subl $(dirname $(httpd -V | grep -i server_config_file | cut -d '"' -f 2))"

# Android emulator
alias android_emulator="~/Library/Android/sdk/emulator/emulator @Nexus_5X_API_28_x86  -dns-server 8.8.8.8"
alias emulator_dev_menu="adb shell input keyevent 82"

###
# time to upgrade `ls`
# use coreutils `ls` if possible…
hash gls >/dev/null 2>&1 || alias gls="ls"

# always use color, even when piping (to awk,grep,etc)
if gls --color > /dev/null 2>&1; then colorflag="--color"; else colorflag="-G"; fi;
export CLICOLOR_FORCE=1

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ls='gls -AFh ${colorflag} --group-directories-first'
alias lsd='ls -l | grep "^d"' # only directories

###

# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
alias bfg='java -jar ~/Bin/bfg-1.12.3.jar'
alias fix="git diff --name-only | uniq | xargs subl"

# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"


alias diskspace_report="df -P -kHl"
alias free_diskspace_report="diskspace_report"

# File size
alias fs="stat -f \"%z bytes\""

# Empty the Trash on all mounted volumes and the main HDD. then clear the useless sleepimage
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash; sudo rm /private/var/vm/sleepimage"

# Update installed Ruby gems, Homebrew, npm, and their installed packages
alias brew_update="brew -v update; brew -v upgrade --all; brew cleanup; brew cask cleanup; brew prune; brew doctor"
alias update_brew_npm_gem='brew_update; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update --no-rdoc --no-ri'

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

# dev
alias memcached="memcached -d -m 24 -p 11211"
alias enable_xdebug="export XDEBUG_CONFIG=\"remote_port=9000 idekey=PHPSTORM\""
alias disable_xdebug="export XDEBUG_CONFIG=\"\""
alias hosts='sudo $EDITOR /etc/hosts'

alias spoof-mac="spoof-mac.py"

# Define pbcopy using xsel if they're not already defined
if ! type -p "pbcopy" > /dev/null; then
  alias pbcopy='xsel --clipboard --input'
fi
if ! type -p "pbpaste" > /dev/null; then
  alias pbpaste='xsel --clipboard --output'
fi

# Clear terminal and empty scrollback
alias clear='printf "\ec"'

# Random fact
alias fact="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"

# Recursive directory listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

# Find the biggest folder
alias ds='du -ks *|sort -n'

# here's LS_COLORS
# github.com/trapd00r/LS_COLORS
command -v gdircolors >/dev/null 2>&1 || alias gdircolors="dircolors"
eval "$(gdircolors -b ~/.dircolors)"