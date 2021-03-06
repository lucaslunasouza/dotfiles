# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH=$PATH:~/dev/devium

# Path to your oh-my-zsh installation.
export ZSH="/home/lucas/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="agnoster"
POWERLEVEL9K_MODE="nerdfont-complete"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/p ath/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# Key binds

#################
# Aliases
#################
# Pacman
alias pms='sudo pacman -S'
alias pml='pacman -Qqe'
alias pmu='sudo pacman -Syu'
# Paths
alias home='cd ~'
alias dev='cd ~/dev'
alias devium='cd ~/dev/devium'
alias manager='cd ~/dev/devium/devium-manager'
alias worker='cd ~/dev/devium/devium-worker'
alias appium='cd ~/dev/devium/devium-appium'
alias selenium='cd ~/dev/devium/devium-selenium'
alias hub='cd ~/dev/devium/devium-hub'
alias studio='cd ~/dev/devium/devium-studio'
alias rdq='cd ~/dev/rdq'
alias redmine='cd ~/dev/redmine-docker/redmine'
alias plugins='cd ~/dev/redmine-docker/redmine/plugins'
alias dl='cd ~/downloads'
# Dotfiles
alias .zsh='vim ~/.zshrc'
alias .vim='vim ~/.vimrc'
alias .i3='vim ~.3/config'
alias szsh='source ~/.zshrc'
alias svim='source ~/.vimrc'
# Git
alias gco='git checkout'
alias gcb='git checkout -b'
alias gpl='git pull'
alias gps='git push'
alias gs='git status'
alias gl='git log'
alias gd='git diff'
# Docker
alias dl='docker logs'
alias dsock='sudo chmod 777 /var/run/docker.sock'
alias dil='docker image list'
alias dcl='docker container list -a'
alias dvl='docker volume list'
alias dcp="echo 'y' | docker container prune"
alias dip="echo 'y' | docker image prune"
alias dvp="echo 'y' | docker volume prune"
alias dex='docker exec -it'
alias dirm='docker image rm'
alias dvrm='docker volume rm'
alias dcs='docker container stop'
alias dck='docker container kill'
alias dcr='docker container rm'
alias dstop='docker stop $(docker ps -a -q)'
alias dkill='docker kill $(docker ps -a -q)'
alias dcrm='docker rm $(docker ps -a -q)'
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias alpine='docker kill alpine; docker rm alpine; docker run --name alpine ruby:alpine tail -f /dev/null'
# Kubernetes
alias kubectl='kubectl --insecure-skip-tls-verify'
alias kubelab='kubectl config --kubeconfig=config set-cluster lab && kubectl config use-context kubernetes-lab'
alias kubeprod='kubectl config --kubeconfig=config set-cluster production && kubectl config use-context kubernetes-ops'
alias kgp='kubectl get pods -o wide --show-labels'
alias kgd='kubectl get deployment'
alias kgs='kubectl get service'
alias kgi='kubectl get ingress'
alias kdp='kubectl describe pods'
alias kex='kubectl exec -it'
# Keyboard
alias qwerty="setxkbmap us"
alias qwfpgj="setxkbmap us"
alias colemak="setxkbmap us -variant colemak && xmodmap -e 'keycode 66 = BackSpace'"
# Monitor
alias monitor="xrandr --output eDP1 --auto --output DVI-I-1-1 --auto --left-of eDP1 --output DVI-I-2-2 --auto --left-of DVI-I-1-1"
# Other
alias pid="sudo rm tmp/pids/server.pid"
alias rdq_dev="cd ~/dev/rdq && dk rdq; dk rdq_db; dk rdq_nginx; DB_USER=root DB_PASSWORD=1234 ./docker/scripts/start.sh --env development"
alias redmine_dev="cd ~/dev/redmine && dk redmine; dk redmine_db; dk redmine_nginx; DB_USER=root DB_PASSWORD=1234 ./docker/scripts/start.sh --env development"
# Scripts
alias committer='~/scripts/switch_committer.sh'

# Functions
function gitf() {
  git add --all
  echo ':wq' | git commit --amend
  git push --force
}
function gitr() {
  branch=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD)
  git stash
  git checkout -b 'temp'
  git branch -D "$branch"
  git fetch
  git checkout "$branch"
  git branch -D 'temp'
}
function dk() {
  docker kill "$1"
  docker rm "$1"
}
function dbu() {
  docker build -t="$1" .
}
function localhost() {
  echo "$(/sbin/ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' | tail -1)"
}
function kl() {
  kubectl logs -l app="$1" -f
}
function ks() {
  kubectl scale deployment "$1" --replicas="$2"
}

DEFAULT_USER=$(whoami)
VISUAL=vim
EDITOR=vim
