pkg update
pkg install -y neovim \
	git \
	wget \
	libqrencode

# Generate ssh if not exist
if [ ! -f ~/.ssh/id_ed25519 ]; then
	ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_ed25519 -q -N ""
fi

cat ~/.ssh/id_ed25519.pub | qrencode -t UTF8
