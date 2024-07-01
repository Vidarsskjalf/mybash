# ____            _
#| __ )  __ _ ___| |__  _ __ ___
#|  _ \ / _` / __| '_ \| '__/ __|
#| |_) | (_| \__ \ | | | | | (__
#|____/ \__,_|___/_| |_|_|  \___|
# by Jerrod Havig
#
#
# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# History size
HISTCONTROL=ignoreboth
HISTFILESIZE=10000
HISTSIZE=500

# Deduplicate history and remove lines that start with a space
export HISTCONTROL=easedups:ignoredups:ignorespace

# Set default editor
export EDITOR=nvim
export VISUAL=nvim

# Bash prompt
export PS1='[\u@\h \[\e[34m\]\W\[\e[0m\]]\$ '

# Enable color support for ls and grep
if command -v dircolors >/dev/null 2>&1; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

################################
### MACHINE SPECIFIC ALIAS'S ###
################################

# Alias's for SSH
# alias SERVERNAME='ssh ipaddress -l USERNAME -p PORTNUMBERHERE'

# Alias's to change the directory
alias conf='cd ~/.config/'
alias dwm='cd ~/build/suckless/dwm'

#######################
### GENERAL ALIAS'S ###
#######################

# Edit bashrc
alias bashrc='nvim ~/.bashrc'

# Alias's for modified commands
alias cp='cp -i' # makes interactive
alias mv='mv -i' # makes interactive
alias mkdir='mkdir -p'
alias ps='ps auxf'

# Alias's for directoy listing commands
alias ll="ls -Alh" # show hidden files
alias lt="ls -ltr" # sort by date

# Change Directory aliases
alias home='cd ~'
alias cd..="cd .."
alias ..="cd .."

# nvim sudo config fix
sudo() {
    if [[ $1 == "nvim" ]]; then
        shift
        command sudo -E nvim "$@"
    else
        command sudo "$@"
    fi
}

###########################
### Bullshit down there ###
###########################

