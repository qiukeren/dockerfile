alias msc="mvn clean package -Dmaven.test.skip=true -e -Dmaven.javadoc.skip=true"
alias msr="mvn clean spring-boot:run"
alias msp="mvn clean package -P generateMapper -Dmaven.test.skip=true"

export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S " 
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export HISTCONTROL=ignoreboth:erasedups

export PROMPT_COMMAND="history -a; history 1|logger -i -t '`whoami`'; $PROMPT_COMMAND"

export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='Exfxcxdxbxegedabagacad'


export PS1="\[$(tput bold)\]\[\033[38;5;19m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput bold)\]\[\033[38;5;22m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \A [\[$(tput sgr0)\]\[\033[38;5;88m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]:\[$(tput sgr0)\] "

