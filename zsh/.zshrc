
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
    git 
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-colorls
    )
source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HISTORY_IGNORE='cd*'
bindkey '\t' autosuggest-accept
bindkey '^ ' autosuggest-fetch

eval "$(starship init zsh)"
source $(dirname $(gem which colorls))/tab_complete.sh

alias ls='colorls -h --group-directories-first -1'
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'

path+=('/home/darida12321/.nvim/versions/node/v16.17.0/bin')
path+=('/home/darida12321/.cargo/bin')
path+=('/home/darida12321/.local/bin')

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

