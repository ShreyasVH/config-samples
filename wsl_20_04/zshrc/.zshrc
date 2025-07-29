# parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }

# PS1="\u \d \@ \w \[\033[32m\]\$(parse_git_branch)\[\033[00m\]$: "

# export HISTTIMEFORMAT="%d/%m/%y %T "

autoload -Uz vcs_info
precmd() { vcs_info }

setopt PROMPT_SUBST
PROMPT='%B%F{green}%n:%F{blue}%~${vcs_info_msg_0_}: %F{yellow}$(date "+%Y-%m-%d %H:%M:%S")%f%b $ '
RPROMPT='%(?.%F{green}OK.%F{red}FAIL)%f'

export PATH=""
export PATH="/usr/local/sbin":$PATH
export PATH="/usr/local/bin":$PATH
export PATH="/usr/sbin":$PATH
export PATH="/usr/bin":$PATH
export PATH="/sbin":$PATH
export PATH="/bin":$PATH
export PATH="$HOME/binaries:$PATH"
export PATH="$HOME/systemBinaries:$PATH"
export PATH="$HOME/ide/sublime_text:$PATH"
export PATH="$HOME/programs/direnv:$PATH"

eval "$(direnv hook zsh)"

export DISPLAY=192.168.0.178:0


SUDO_ASKPASS=$HOME/askpass.sh sudo -A timedatectl set-timezone UTC

export DIRENV_LOG_FORMAT=
