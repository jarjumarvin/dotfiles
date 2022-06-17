export ZSH="/Users/marvinjarju/.oh-my-zsh"

# THEME & PROMPT
ZSH_THEME=""

autoload -U promptinit; promptinit
prompt pure

# PLUGIN OPTIONS
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

plugins=(
  git
  brew
  common-aliases
  node
  rand-quote
  sudo
  yarn
  z
  colored-man-pages
  colorize
  cp
  alias-tips
  tmux
  fzf
  fzf-tab
  zsh-autosuggestions
  zsh-syntax-highlighting
)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $ZSH/oh-my-zsh.sh

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

# colorls autocompletion
source /Users/marvinjarju/.rvm/gems/ruby-3.0.0/gems/colorls-1.4.4/lib/tab_complete.sh

# aliases
alias tree='git log --graph --pretty=oneline --abbrev-commit'
alias lc='colorls -lA --sd'
alias sweep="find . -name .DS_Store -type f -delete ; find . -type d | xargs dot_clean -m"

alias ls="colorls"

alias f="open ."

alias edu="cd ~/Documents/edu"

alias thesis="cd ~/Documents/edu/thesis"

alias pc-home="ssh jarjumarvin@77.56.139.79"
alias thesis-notebook="ssh -f -N -L 8889:localhost:8889 jarjumarvin@77.56.139.79"

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

alias stopservices="brew services stop elasticsearch-full; brew services stop redis; brew services stop postgresql@12"
alias startservices="brew services start elasticsearch-full; brew services start redis; brew services start postgresql@12"

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

alias td="tmux detach"

# encodings
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

# https://egeek.me/2020/04/18/enabling-locate-on-osx/
if which glocate > /dev/null; then
  alias locate="glocate -d $HOME/locatedb"

  # Using cache_list requires `LOCATE_PATH` environment var to exist in session.
  # trouble shoot: `echo $LOCATE_PATH` needs to return db path.
  [[ -f "$HOME/locatedb" ]] && export LOCATE_PATH="$HOME/locatedb"
fi

alias loaddb="gupdatedb --localpaths=$HOME --prunepaths=/Volumes --output=$HOME/locatedb"

fetch
