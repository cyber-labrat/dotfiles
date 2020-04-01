export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="avit"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
export QMK_HOME="$HOME/dotfiles/packages/qmk_firmware"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"  # This loads nvm
source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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

neofetch

# will load the file on start, usually an init file
if [[ $1 == file ]]
then
    source "$2"
set --
fi
