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
PROMPT+='%{$fg[white]%}%~%{$reset_color%}$(git_prompt_info) $ '
# git settings
ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[075]}(${FG[078]}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${FG[075]})%{$reset_color%}"
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


export TERM=xterm-color

[[ -s "$HOME/.zsh_profile" ]] && source "$HOME/.zsh_profile"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
