HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=100000
HISTFILESIZE=2000
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
