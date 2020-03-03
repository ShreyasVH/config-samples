export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#php
export PATH="/usr/local/opt/php/bin:$PATH"

#java
export PATH="/Library/Java/JavaVirtualMachines/jdk1.8.0_241.jdk/Contents/Home/bin:$PATH"

export CPPFLAGS="-I/usr/local/opt/openjdk/include"

#activator
export PATH="/Users/shreyasvh/Downloads/activator-dist-1.3.10/bin:$PATH"

#scala
export PATH="/usr/local/opt/scala/bin:$PATH"

#sbt
export PATH="/usr/local/opt/sbt@0.13/bin:$PATH"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_241.jdk/Contents/Home"

alias dt="date"
alias ls="ls -alhG"

alias ssh204="ssh -oProxyCommand='ssh -W %h:%p jobs@172.16.31.102' uat204@172.16.36.204"
alias ssh150="ssh -oProxyCommand='ssh -W %h:%p jobs@172.16.31.102' jobs@172.16.29.150"
alias ssh49="ssh ravi@192.168.124.49"
alias ssh110="ssh manukiran.jogi@192.168.124.110"
alias ssh53="ssh manukiran.jogi@192.168.124.53"
alias ssh171="ssh ravi@192.168.124.171"

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\u \d \@ \w \[\033[32m\]\$(parse_git_branch)\[\033[00m\]$: "

export HISTTIMEFORMAT="%d/%m/%y %T "

#ruby
export PATH="/usr/local/bin":$PATH

#rabbitmq
export PATH="/usr/local/opt/rabbitmq/sbin:$PATH"

#php
# export PATH="/usr/local/opt/php@7.3/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"