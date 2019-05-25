export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# add extra directories to our path
export PATH="$PATH:$HOME/dotfiles/scripts"
export PATH="$PATH:$HOME/.local/bin"

# Functions
copy () {
    xclip -selection clipboard -i
}

# Configure ssh keys
eval "$(ssh-agent -s)"
ls $HOME/.ssh | \
    grep -v "known_hosts\|.*pub" | \
    xargs -I{} ssh-add $HOME/.ssh/{}
clear

neofetch
