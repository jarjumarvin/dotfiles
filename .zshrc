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

fetch(){
  neofetch --ascii ~/.totoro --ascii_colors 1 2 3;
}

# include Z, yo
. ~/z.sh

# aliases
alias l='exa --icons --group-directories-first'
alias ls='exa --icons --long --modified --icons --header --group-directories-first'
alias ls='exa --icons --long --modified --icons --header --tree -L 2 --group-directories-first'
alias ls='exa --icons --long --modified --icons --git --header --group-directories-first'

alias clr="clear && fetch"
alias reload="source ~/.zshrc"
alias config="nvim ~/.zshrc"

# encodings
export LC_ALL=en_US.UTF-8

eval $(thefuck --alias)

fetch
