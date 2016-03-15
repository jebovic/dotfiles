if [ -z "$PS1" ]; then
  shopt -s expand_aliases
fi

if [ -e ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -e ~/dotfiles/bashrc.d/.bash_prompt ]; then
    . ~/dotfiles/bashrc.d/.bash_prompt
fi

if [ -e ~/dotfiles/bashrc.d/.bash_functions ]; then
    . ~/dotfiles/bashrc.d/.bash_functions
fi
