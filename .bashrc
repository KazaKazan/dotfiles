#
# ~/.bashrc
#

#If not running interactively, don't do anything
[[ $- != *i* ]] && return

## VARIABLES
export EDITOR=nano
export VISUAL=nano

## ALIASES
# ls with color
alias ls='ls --color=auto'

# Custom prompt
export PS1="\[\e[36m\][\[\e[m\]\[\e[35m\]\u\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[35m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\]\[\e[36m\]]\[\e[m\]\[\e[36m\]:\[\e[m\] "

## FUNCTIONS
# df with gigabytes and only shows home and root
function disk_space () {
	df "$@" -h | grep -E '^/'
}
