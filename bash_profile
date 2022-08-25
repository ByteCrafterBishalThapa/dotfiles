
eval "$(/opt/homebrew/bin/brew shellenv)"

if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

export VISUAL=vim
export EDITOR="$VISUAL"
export BASH_SILENCE_DEPRECATION_WARNING=1

alias edit="vim"
alias gs="git status"
alias ls="ls -l"
alias kubectl="minikube kubectl --"


# -------------
# Env variable
# -------------

# Don't add duplicate lines in history
HISTCONTROL=ignoreboth

# Set history fromat to include timestaps
HISTTIMEFORMAT="%Y-%m-%d %T "

GITSTATUS_ENABLE_LOGGING=1

# Show git branch name
force_color_prompt=yes
color_prompt=yes
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# tput color https://www.baeldung.com/linux/terminal-output-color
_GREEN=$(tput setaf 2)
_BLUE=$(tput setaf 4)
_RED=$(tput setaf 1)
_RESET=$(tput sgr0)
_BOLD=$(tput bold)

#PS1='\w\[\033[01;31m\] $(parse_git_branch)\[\033[00m\] \$ '
#PS1='$(printf "%$((`tput cols`-1))s\r")\w\[\033[01;31m\] $(parse_git_branch)\[\033[00m\] \$ '
PS1='$(printf "%$((`tput cols`-1))s\r") \w ${_GREEN}$(parse_git_branch)${_RESET} \$ ' 



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
