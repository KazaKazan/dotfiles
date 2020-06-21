#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#Custom prompt
export PS1="\[\e[36m\][\[\e[m\]\[\e[35m\]\u\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[35m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\]\[\e[36m\]]\[\e[m\]\[\e[36m\]:\[\e[m\] "

#Volume command, the keyboard stuff works tho
#OK So apparently I need a fucking function for this so
function vol () {
	amixer -M sset Master "$1"% q
	echo Volume set to "$1"%
}

# Neofetch with image
alias neofetch='clear && neofetch --backend w3m --source ~/.config/walp/card.png'

#This is to make ranger use nano isntead of looking for vi
export EDITOR=nano
export VISUAL=nano

# df with gigabytes and only shows home and root
function disk_space () {
	df "$@" -h | grep -E '^/'
}
