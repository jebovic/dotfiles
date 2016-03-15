if [ -z "$PS1" ]; then
  shopt -s expand_aliases
fi

export PROMPTCOLOR1="greyLight"
export PROMPTCOLOR2="white"
export PROMPTCOLOR3="white"

if [ -e ~/dotfiles/bashrc.d/.bash_aliases ]; then
    . ~/dotfiles/bashrc.d/.bash_aliases
fi

if [ -e ~/dotfiles/bashrc.d/.bash_env ]; then
    . ~/dotfiles/bashrc.d/.bash_env
fi

if [ -e ~/dotfiles/bashrc.d/.npm_completion ]; then
    . ~/dotfiles/bashrc.d/.npm_completion
fi
