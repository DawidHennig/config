#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1="\[$(tput setaf 2)\]\u@\h\[$(tput setaf 12)\]:\W\\$ \[$(tput sgr0)\]"
alias ls='ls --color'
export PS1='\u@\h:\[\e[33m\]\W\[\e[0m\]\$ '
export EDITOR='vim'
alias tmux="TERM=screen-256color-bce tmux"
bind 'set bell-style none'
source ~/gitstatus/gitstatus.prompt.sh


bind '"\C-f":"cd_fzf\n"'
cd_fzf() {
    cd $HOME && cd "$(fd -t d | fzf)"
}

