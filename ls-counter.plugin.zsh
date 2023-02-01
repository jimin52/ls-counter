# File: ~/.oh-my-zsh/custom/plugins/ls-counter/ls-counter.plugin.zsh
counter=0

function ls_counter_increment() {
  ((counter++))
}

alias ls='ls_counter_increment; ls-counter; ls'

function print_ls_counter() {
  echo "You type \033[35mls\033[0m command \033[35m$counter\033[0m times."
}

alias ls-counter=print_ls_counter

