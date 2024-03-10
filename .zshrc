# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes


# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(fast-syntax-highlighting git aliases zsh-autosuggestions laravel node npm web-search)
# fast-syntax-highlighting
# zsh-syntax-highlighting
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



export PATH=/opt/homebrew/bin:$PATH

# source /home/colocho/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# eval "$(oh-my-posh init zsh --config /home/linuxbrew/.linuxbrew/opt/oh-my-posh/themes/multiverse-neon.omp.json)"
eval "$(oh-my-posh init zsh --config /home/linuxbrew/.linuxbrew/opt/oh-my-posh/themes/emodipt-extend.omp.json)"
# eval "$(oh-my-posh init zsh --config /home/linuxbrew/.linuxbrew/opt/oh-my-posh/themes/bubblesextra.omp.json)"
# eval "$(oh-my-posh init zsh --config /home/linuxbrew/.linuxbrew/opt/oh-my-posh/themes/tokyonight_storm.omp.json)"

# eval "$(oh-my-posh init zsh)"

export PATH="/usr/local/bin:$PATH"

export PATH="/usr/bin/pandoc:$PATH"

#speedup zsh
#timezsh() {
#  shell=${1-$SHELL}
#  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
#}

# Micro theme
export "MICRO_TRUECOLOR=1"

#alias to upgrade everything

alias up="sudo nala upgrade -y && flatpak update -y && sudo snap refresh && brew update && brew upgrade && sudo zap self-update && zap upgrade && mise up && omz update && exec zsh"

alias upall="sudo nala upgrade -y && flatpak update -y && sudo snap refresh && conda update conda -y & toolbox && brew update && brew upgrade && omz update && exec zsh"

alias matrix="/bin/python3 /usr/local/bin/unimatrix -a -f -s 10"


alias toolbox="cd /home/colocho/.local/share/JetBrains/Toolbox/bin && ./jetbrains-toolbox & cd ~"
# sync pcloud and megasync
alias syncloud="cd ~/Applications/ && ./pcloud_f61b3114d8c93155e7bee76f43783ca0 & megasync"

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

#limit download speed
alias netlimit='sudo wondershaper wlp2s0 6000 99999 & echo "Network limit ON"  '
alias netlimitoff='sudo wondershaper clear wlp2s0 & echo "Network limit OFF" '


#logo-ls
# equivalents with Git Status on by Default
alias ls='logo-ls -D'
alias la='logo-ls -AD'
alias ll='logo-ls -alDh'

# run ls -a every time you change working directory
chpwd() la

# function to run ls -a  after mkdir
# function mkdirls() {
#     mkdir "$@" && la
# }
# alias mkdir='mkdirls'

#replaces cat for bat
alias cat='batcat'

#common commands
alias cls='clear'
alias home='cd ~'
alias cd..='cd ..'
alias sudo='sudo '
alias grep='grep -i'

#for nano loading the config file when using root privileges
alias nano='nano --rcfile ~/.config/nano/nanorc'

#fzf keybindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#show image on terminal
alias simg='kitty +kitten icat'

#copy output of terminal to clipboard
#usage: pwd | copy
alias copy='xclip -sel clip'

#add java to path
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
export PATH=$PATH:$JAVA_HOME/bin

## mise (version manager, previously rtx)

export PATH="/home/linuxbrew/.linuxbrew/Cellar/mise/2023.8.2/bin:$PATH"
export mise_SHELL=zsh

mise() {
  local command
  command="${1:-}"
  if [ "$#" = 0 ]; then
    command mise
    return
  fi
  shift

  case "$command" in
  deactivate|shell)
    eval "$(command mise "$command" "$@")"
    ;;
  *)
    command mise "$command" "$@"
    ;;
  esac
}

_mise_hook() {
  eval "$(mise hook-env -s zsh)";
}
typeset -ag precmd_functions;
if [[ -z "${precmd_functions[(r)_mise_hook]+1}" ]]; then
  precmd_functions=( _mise_hook ${precmd_functions[@]} )
fi
typeset -ag chpwd_functions;
if [[ -z "${chpwd_functions[(r)_mise_hook]+1}" ]]; then
  chpwd_functions=( _mise_hook ${chpwd_functions[@]} )
fi

# completion commands mise
source ~/.mise_compdef

## usage: gpush <message<
function gpush() {
    git add .
    git commit -m "$*"
    git push
}


alias pas='php artisan serve'
alias nrd='npm run dev'

eval "$(zoxide init --cmd cd zsh)"


export PATH="$HOME/.config/composer/vendor/bin:$PATH"
