# Bash configuration

# Force 256-color terminal
export TERM=screen-256color

# Make sure that terminal uses UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Disable Ctrl-S from sending XOFF (Ctrl-Q for XON)
stty ixany
stty ixoff -ixon

# Don't include plain "ls" and "exit" into command history
export HISTIGNORE="&:ls:exit"

# Set Vim as a default editor
export EDITOR=vim

# Always run GDB in a quiet mode (initial copyright message is disabled)
alias gdb="gdb -q"

