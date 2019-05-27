cd settings

mkdir $HOME/.config/fontconfig
mkdir $HOME/.config/i3
mkdir $HOME/.config/i3blocks
mkdir $HOME/.config/neofetch
mkdir $HOME/.config/nvim
mkdir $HOME/.config/ranger
mkdir $HOME/.config/termite
mkdir $HOME/.fonts
mkdir $HOME/.notes

ln ".fonts/Hack Bold Italic Nerd Font Complete Mono.ttf" "$HOME/.fonts/Hack Bold Italic Nerd Font Complete Mono.ttf"
ln ".fonts/Hack Bold Nerd Font Complete Mono.ttf" "$HOME/.fonts/Hack Bold Nerd Font Complete Mono.ttf"
ln ".fonts/Hack Italic Nerd Font Complete Mono.ttf" "$HOME/.fonts/Hack Italic Nerd Font Complete Mono.ttf"
ln ".fonts/Hack Regular Nerd Font Complete Mono.ttf" "$HOME/.fonts/Hack Regular Nerd Font Complete Mono.ttf"
ln .config/fontconfig/fonts.conf $HOME/.config/fontconfig/fonts.conf
ln .config/i3/config $HOME/.config/i3/config
ln .config/i3blocks/cmus.sh $HOME/.config/i3blocks/cmus.sh
ln .config/i3blocks/config $HOME/.config/i3blocks/config
ln .config/neofetch/config.conf $HOME/.config/neofetch/config.conf
ln .config/nvim/init.vim $HOME/.config/nvim/init.vim
ln .config/ranger/rc.conf $HOME/.config/ranger/rc.conf
ln .config/termite/config $HOME/.config/termite/config
ln .notes/cmus.md $HOME/.notes/cmus.md
ln .notes/i3.md $HOME/.notes/i3.md
ln .notes/ranger.md $HOME/.notes/ranger.md
ln .zshrc $HOME/.zshrc

cd ..