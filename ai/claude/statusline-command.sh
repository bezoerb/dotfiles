#!/bin/sh
# Claude Code status line — inspired by Pure zsh theme

input=$(cat)

cwd=$(echo "$input" | jq -r '.workspace.current_dir // .cwd')
model=$(echo "$input" | jq -r '.model.display_name // empty')
used=$(echo "$input" | jq -r '.context_window.used_percentage // empty')

# Shorten home directory to ~
home="$HOME"
short_cwd=$(echo "$cwd" | sed "s|^$home|~|")

# Git branch (skip optional locks to avoid blocking)
git_branch=""
if git_info=$(GIT_OPTIONAL_LOCKS=0 git -C "$cwd" symbolic-ref --short HEAD 2>/dev/null); then
    git_branch="$git_info"
fi

# Build output — white path, dimmed separators, git branch
if [ -n "$git_branch" ]; then
    printf '\033[97m%s\033[0m \033[2m%s\033[0m \033[97m%s\033[0m' "$short_cwd" "git:($git_branch)" "$model"
else
    printf '\033[97m%s\033[0m \033[2m%s\033[0m' "$short_cwd" "$model"
fi

# Context usage if available
if [ -n "$used" ] && [ "$used" != "null" ]; then
    printf ' \033[2mctx:%s%%\033[0m' "$(printf '%.0f' "$used")"
fi
