pkg update
pkg install -y neovim \
	git \
	wget \
	libqrencode

# Generate ssh if not exist
if [ ! -f ~/.ssh/id_ed25519 ]; then
	ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_ed25519 -q -N ""
fi

# setup font

if [ ! -f ~/.termux/font.ttf ]; then
	curl -k https://deprived.dev/assets/CozetteVector-nerd.ttf -o ~/.termux/font.ttf
	termux-reload-settings
fi

# setup neovim
rm -fr ~/.config/nvim
git clone https://github.com/MagicBOTAlex/NVimConfigs ~/.config/nvim/
pkg install -y clang \
  ripgrep \
  python \
  nodejs 

# setup shell
cp -f .bashrc ~/.bashrc
cp -f .inputrc ~/.inputrc

cat ~/.ssh/id_ed25519.pub | qrencode -t UTF8
