
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

eval "$(/opt/homebrew/bin/brew shellenv)"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# OhMyZSH
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

plugins=(git ruby fnm git-extras node pip brew)

export ZSH=/Users/borisbarac/.oh-my-zsh
ZSH_THEME="awesomepanda"
# ZSH_THEME="spaceship"
export UPDATE_ZSH_DAYS=10

# source $ZSH/oh-my-zsh.sh
# source ~/.profile

# RVM
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# NVM load
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Utils
alias sbl='open -a "Sublime Text"'
alias l='ls -asl'
alias c='clear'
alias ddd='rm -r $HOME/Library/Developer/Xcode/DerivedData/*'


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

alias gcm='git commit -m'
alias gcv='git commit -a' #git commit with text editor
alias gaacm='gaa && gcm'

alias gr='git reset'
alias grh='git reset --hard'
alias gra='gaa && grh'
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
alias zp='sbl ~/.zprofile'
alias vp='sbl ~/.vimrc'
