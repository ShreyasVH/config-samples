parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\u \d \@ \w \[\033[32m\]\$(parse_git_branch)\[\033[00m\]$: "

export HISTTIMEFORMAT="%d/%m/%y %T "

export PATH="/usr/local/binaries:$PATH"
export PATH="/usr/local/systemBinaries:$PATH"

eval "$(direnv hook bash)"

export DISPLAY=192.168.0.178:0


SUDO_ASKPASS=$HOME/askpass.sh sudo -A timedatectl set-timezone UTC
