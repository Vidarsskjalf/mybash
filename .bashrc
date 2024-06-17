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

# Path to your oh-my-bash installation.
export OSH='/home/jhavig/.oh-my-bash'

# Theme
OSH_THEME="primer" # Default is 'font'

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
# OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format:
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

