#!/bin/sh
function message
packages=$(cat ubuntu.lst)
echo "#Install packages\n"
sudo apt install -y $packages
echo "#done\n"
echo "#Config vim\n"
cp .vimrc ~/.vimrc
VimPlug=~/.vim/autoload/plug.vim 
if [ ! -f $VimPlug ]; then
	curl -fLo $VimPlug --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
vim +PlugInstall +qall
echo "#done\n"

echo "\n#Config guake\n"
guake --restore-preferences guake.cfg
echo "#done\n"

echo "\n#Config gnome\n"
(chmod +x gnome-config-apply.sh && ./gnome-config-apply.sh)
echo "#done\n"

echo "\n#Config zsh\n"
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
cp .zshrc ~/.zshrc
PowerLevel10k=~/powerlevel10k
if [ ! -d $PowerLevel10k ]; then
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $PowerLevel10k
fi
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
cp .p10k.zsh ~/.p10k.zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/psprint/zsh-navigation-tools/master/doc/install.sh)"
#echo "exec zsh" >> ~/.bashrc
echo "#done\n"

