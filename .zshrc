# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/marvinjarju/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

autoload -U promptinit; promptinit
prompt pure

# .zshrc
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

iterm2_print_user_vars() {
  # extend this to add whatever
  # you want to have printed out in the status bar
  iterm2_set_user_var name $(whoami)
  iterm2_set_user_var pwd $(pwd)
}

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
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# .zshrc
plugins=(
  git
  brew
  common-aliases
  node
  npm
  rand-quote
  sudo
  yarn
  z
  colored-man-pages
  colorize
  cp
  zsh-syntax-highlighting
  zsh-autosuggestions
  alias-tips
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/marvinjarju/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/marvinjarju/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/marvinjarju/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/marvinjarju/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

vps(){
    ssh -p 497 $argv@51.68.189.121
}

fetch(){
  neofetch --ascii ~/.totoro --ascii_colors 1 2 3;
}

# include Z, yo
. ~/z.sh

# .zshrc
# autoload -U promptinit; promptinit
# prompt pure

fetch

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# colorls autocompletion
source /Users/marvinjarju/.rvm/gems/ruby-2.6.5/gems/colorls-1.3.3/lib/tab_complete.sh

# aliases
alias tree='git log --graph --pretty=oneline --abbrev-commit'
alias lc='colorls -lA --sd'
alias sweep="find . -name .DS_Store -type f -delete ; find . -type d | xargs dot_clean -m"

alias ls="colorls"

alias f="open ."

alias edu="cd ~/Documents/edu"

alias headhunter="cd ~/Documents/headhunter"
alias workd="cd ~/Documents/workd"
alias dev="cd ~/Documents/dev"
alias eth="cd ~/Documents/ETH/"
alias ethf="cd ~/Documents/ETH && f"
alias introml="cd ~/Documents/edu/introml"

alias vi="/usr/local/bin/nvim"
alias vim="/usr/local/bin/nvim"
alias clr="clear && fetch"
alias reload="source ~/.zshrc"
alias config="vi ~/.zshrc"

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

export LC_ALL=en_US.UTF-8

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/marvinjarju/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/marvinjarju/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/marvinjarju/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/marvinjarju/google-cloud-sdk/completion.zsh.inc'; fi

[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

eval $(thefuck --alias)
