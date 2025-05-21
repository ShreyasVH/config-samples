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
# export PATH=/usr/bin:$PATH
# export PATH=/bin:$PATH
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

# Load Angular CLI autocompletion.
#source <(ng completion script)
eval "$(direnv hook zsh)"

export DIRENV_LOG_FORMAT=export PATH=$HOME/programs/curl/8.13.0/bin:$PATH
export PATH=$HOME/programs/bash/5.2.37/bin:$PATH
export PATH=$HOME/programs/zsh/5.9/bin:$PATH
export PATH=$HOME/programs/coreutils/9.7/bin:$PATH
export PATH=$HOME/programs/binutils/2.44/bin:$PATH
export PATH=$HOME/programs/findutils/4.10.0/bin:$PATH
export PATH=$HOME/programs/sed/4.9/bin:$PATH
export PATH=$HOME/programs/gawk/5.3.2/bin:$PATH
export PATH=$HOME/programs/sudo/1.9.16/bin:$PATH
export PATH=$HOME/programs/tar/1.35/bin:$PATH
export PATH=$HOME/programs/make/4.4.1/bin:$PATH
export PATH=$HOME/programs/git/2.49.0/bin:$PATH
export PATH=$HOME/programs/lsof/4.99.4/bin:$PATH
export PATH=$HOME/programs/less/668/bin:$PATH
export PATH=$HOME/programs/gzip/1.14/bin:$PATH
export PATH=$HOME/programs/grep/3.12/bin:$PATH
export PATH=$HOME/programs/clang/18.1.18/bin:$PATH
export PATH=$HOME/programs/unzip/6.0/bin:$PATH
