#!/bin/sh

ln -s ~/.yadr/certs/mkcert ~/mkcert

sudo apt install xclip xsel

echo "alias pbcopy='xclip -selection clipboard'" >> ~/.zshrc
echo "alias pbpaste='xclip -selection clipboard -o'" >> ~/.zshrc

echo "alias pbcopys='xsel --clipboard --input'" >> ~/.zshrc
echo "alias pbpastes='xsel --clipboard --output'" >> ~/.zshrc


ln -S ~/.yadr/utils/clean-docker.sh ~/clean-docker.sh

chmod +x ~/clean-docker.sh

rm -rf ~/.config

mkdir ~/.config

cp -R ~/.yadr/config/* ~/.config/
