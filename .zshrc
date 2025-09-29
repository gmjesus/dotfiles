##############PERSONAL PREFERENCE###############
alias codev="git checkout master && git pull && git fetch --prune"
alias co="git checkout"
alias push="git push origin"
alias rb="git pull --rebase origin main"
alias dff="git diff"
alias cmt="git commit"
alias add="git add"
alias status="git status"
alias ls="ls --color -a"

#################PROMPT##########################

autoload -Uz compinit && compinit
autoload -Uz add-zsh-hook
autoload -Uz vcs_info

add-zsh-hook precmd vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats " %F{cyan}%c%u(%b)%f"
zstyle ':vcs_info:*' actionformats " %F{cyan}%c%u(%b)%f %a"
zstyle ':vcs_info:*' stagedstr "%F{green}"
zstyle ':vcs_info:*' unstagedstr "%F{red}"
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

+vi-git-untracked() { 
  if git --no-optional-locks status --porcelain 2> /dev/null | grep -q "^??"; then
     hook_com[staged]+="%F{red}"
  fi
}

setopt PROMPT_SUBST
export PROMPT='%B%F{green}%n%f%b:%1~$vcs_info_msg_0_ %# '

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

[ -f $HOME/.sbn_aliases ] && source $HOME/.sbn_aliases
