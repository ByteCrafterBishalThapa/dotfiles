# ------------oh-my-zsh---------------------------------
# Path to your oh-my-zsh installation.
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[white]%}%~%{$reset_color%} $(git_prompt_info)$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[white]%})"
# --------------------------------------------------
export EDITOR='vim'


# ------------ alias --------------------------------
alias gs='git status'
alias gl='git log -n 3'
alias vi='vim'
alias ls='ls -lG'


# Don't add duplicate lines in history
HISTCONTROL=ignoreboth

# Set history fromat to include timestaps
HISTTIMEFORMAT="%Y-%m-%d %T "


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
