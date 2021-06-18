ZSH_THEME=robbyrussell
export ZSH="$HOME/.oh-my-zsh"
plugins=(git tmux zsh-z kubectl kube-ps1 zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
autoload -Uz compinit
compinit
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
#ZSH_THEME="dracula"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(direnv hook zsh)"
eval "$(jenv init -)"
eval "$(pyenv init -)"
source /usr/local/share/zsh-abbr/zsh-abbr.zsh
PROMPT='$(kube_ps1)'$PROMPT
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

