# ls aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias tts='piper-tts --model en_US-lessac-high.onnx --config en_en_US_lessac_high_en_US-lessac-high.onnx.json --output-raw |  aplay -r 22050 -f S16_LE -t raw -'

alias gpt='sgpt'
alias chatgpt='sgpt'
