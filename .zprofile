# OhMyZSH
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export ZSH=/Users/borisbarac/.oh-my-zsh
export UPDATE_ZSH_DAYS=10
export EDITOR='mvim'

plugins=(last-working-dir)


# FNM load
eval "$(/opt/homebrew/bin/fnm env --use-on-cd)"

#BUN
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# BREW
export PATH="/opt/homebrew/bin:$PATH"

#Node global
export PATH="/opt/homebrew/lib/node_modules:$PATH"

# coreutils brew package
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# Starship
eval "$(starship init zsh)"

# uv
export PATH="/Users/boris/.local/bin:$PATH"

# FZF
source <(fzf --zsh)


# Utils
alias sbl='open -a "Sublime Text"'
alias l='ls -asl'
alias c='clear'
alias ddd='rm -r $HOME/Library/Developer/Xcode/DerivedData/*'
alias brew_update='brew update && brew upgrade --yes && brew cleanup'


# GIT
alias g='git'
alias gb='git branch'
alias gc='git checkout'
alias gcnb='git checkout -b' #create new branch and switch to it

alias gf='git fetch'
alias gfp='git fetch -p' #fetch and prune
alias gpo='git pull origin'


alias gs='git status'
alias gsp='git status -sb' #detail status
alias gl='git log'
alias glp='git lg'
alias gsu='git submodule update --init'

alias gaa='git add -A'
alias gcm='git commit -m'
alias gcv='git commit -a' #git commit with text editor

alias gr='git reset'
alias grh='git reset --hard'
alias grha='gaa && grh'
alias gcall='git clean -dfx'

alias gai='git add -i'
alias gap='git add -p'

alias gshowtagdate='git log --tags --simplify-by-decoration --pretty="format:%ai %d"'

# DOCKER
alias dl='docker ps -a'
alias dlr='docker ps'
alias ds='docker start'
alias dr='docker restart'
alias dk='docker kill'
alias dsif='docker start aea180fd27c2'

# NAV
alias github='cd ~/Documents/GitHub/'
alias h='cd ~/'
alias bp='sbl ~/.bash_profile'
alias zp='sbl ~/.zshrc'
alias vp='sbl ~/.vimrc'


# bun completions
[ -s "/Users/boris/.bun/_bun" ] && source "/Users/boris/.bun/_bun"
export PATH="/opt/homebrew/sbin:$PATH"

# Rust
# export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
# export PATH="$HOME/.cargo/bin:$PATH"

# # dcg: warn if hook was silently removed from Claude Code settings
# if command -v dcg &>/dev/null && command -v jq &>/dev/null; then
#   if [ -f "$HOME/.claude/settings.json" ] && \
#      ! jq -e '.hooks.PreToolUse[]? | select(.hooks[]?.command | test("dcg$"))' \
#        "$HOME/.claude/settings.json" &>/dev/null; then
#     printf '\033[1;33m[dcg] Hook missing from ~/.claude/settings.json — run: dcg install\033[0m\n'
#   fi
# fi
