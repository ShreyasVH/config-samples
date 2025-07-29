autoload -Uz vcs_info
precmd() { vcs_info }

setopt PROMPT_SUBST
PROMPT='%B%F{green}%n:%F{blue}%~${vcs_info_msg_0_}: %F{yellow}$(date "+%Y-%m-%d %H:%M:%S")%f%b $ '
RPROMPT='%(?.%F{green}OK.%F{red}FAIL)%f'

#export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"


export PATH=""
# /Users/shreyas/programs/wget/1.21.4/bin
# //Applications/Sublime Text.app/Contents/SharedSupport/bin/
# /usr/local/sbin
# /usr/local/bin
# /System/Cryptexes/App/usr/bin
export PATH=/usr/bin:$PATH
export PATH=/bin:$PATH
# /usr/sbin
# /sbin
# /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin
# /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin
# /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin
# export PATH=/System/Cryptexes/App/usr/bin:/usr/bin:/bin:$PATH
# export PATH=/System/Cryptexes/App/usr/bin:/bin:$PATH
export PATH="$HOME/binaries:$PATH"
export PATH="$HOME/systemBinaries:$PATH"
#export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin":$PATH
export PATH="/Applications/Docker.app/Contents/Resources/bin":$PATH
# export PATH="/opt/homebrew/bin":$PATH
# export PATH="/opt/homebrew/Cellar/gcc/14.2.0/bin":$PATH
export PATH="$HOME/programs/direnv:$PATH"

# Load Angular CLI autocompletion.
#source <(ng completion script)
eval "$(direnv hook zsh)"

export DIRENV_LOG_FORMAT=
ulimit -n 65536
