# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#ZSH_THEME=robbyrussell
#ZSH_THEME=random
ZSH_THEME="powerlevel10k/powerlevel10k"
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
#PROMPT='$(kube_ps1)'$PROMPT
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
