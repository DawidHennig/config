#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS
# colors
_RED=$(tput setaf 1)
_GREEN=$(tput setaf 2)
_YELLOW=$(tput setaf 3)
_BLUE=$(tput setaf 4)
_MAGENTA=$(tput setaf 5)
_CYAN=$(tput setaf 6)
_WHITE=$(tput setaf 7)
_RESET=$(tput sgr0)
_BOLD=$(tput bold)

export PS1='${_BOLD}${_BLUE}\u${_YELLOW}@${_MAGENTA}\h${_RED}:${_GREEN}\W${_CYAN}$(parse_git_branch) $ ${_RESET}'

# alias ls='ls --color=auto'
alias ls='ls --color'
export EDITOR='vim'
alias tmux="TERM=screen-256color-bce tmux"
bind 'set bell-style none'

bind '"\C-f":"cd_fzf\n"'
cd_fzf() {
    cd $HOME && cd "$(fd -t d | fzf)"
}

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}
