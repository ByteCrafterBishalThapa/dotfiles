# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking

DISABLE_AUTO_TITLE="true"
CASE_SENSITIVE="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker kubectl minikube argocd pass)
source $ZSH/oh-my-zsh.sh

PROMPT='%{$fg[white]%}%~%{$reset_color%}$(git_prompt_info)'
PROMPT+=" %(?:%{$fg_bold[green]%}$ :%{$fg_bold[red]%}$ )%{$reset_color%}"

# --------------------------------------------- Git settings
ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[075]}(${FG[078]}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${FG[075]})%{$reset_color%}"
# --------------------------------------------------
export EDITOR='vim'
export TERM=xterm-256color
export XDG_CONFIG_HOME=~/.config

# --------------------------------------- Vim mode terminal (GNU ReadLine Editor) & Cursor Config
bindkey -v
export KEYTIMEOUT=1

zle-keymap-select () {
  if [ $KEYMAP = vicmd ]; then
      printf "\033[2 q" # Block Cursor in CMD mode
  else
      printf "\033[6 q" # Line Cursor in Insert mode
  fi
}
zle -N zle-keymap-select

zle-line-init () {
  zle -K viins
  printf "\033[6 q"
}
zle -N zle-line-init


# ------------ alias --------------------------------
alias vim="vim"
alias vi="vim"

alias ls='ls -lG'
alias gs='git status'
alias slog="git log --graph --pretty=format:'%C(auto) %h %cr -%d %s %C(cyan)<%an>' --abbrev-commit -n 15"
alias mci="mvn clean install"
alias mciskiptest="mvn clean install -Dmaven.test.skip=true"
alias master="git checkout master"
alias main="git checkout main"
alias sjava="sdk use java" 
alias evimconfig="vim ~/.vimrc"
alias ezshconfig="vim ~/.zshrc"
alias st="cat ~/.todos.adoc"
alias et="vim ~/.todos.adoc"
alias tree2="tree -L 2"
alias tree3="tree -L 3"
alias dockerlsc="docker container list --format 'table {{.ID}} \t{{.Names}} \t{{.Image}} \t{{.Status}}'"

# Save bash history to a file
export HISTSIZE=100000
export HISTFILESIZE=200000
export HISTFILE=~/.zsh_history
export HISTTIMEFORMAT="[%F %T] "

setopt HIST_IGNORE_ALL_DUPS

# ------------- Fuzzy Finder ---------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function vf() {
 vim $(fzf --height 70% --layout=reverse --border --preview 'bat --color=always {}')
}
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# --------------------------------------------------------------

[[ -s "$HOME/.zsh_profile" ]] && source "$HOME/.zsh_profile"

# --------------------------------------------------------------
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export JAVA_HOME=${SDKMAN_CANDIDATES_DIR}/java/${CURRENT}
