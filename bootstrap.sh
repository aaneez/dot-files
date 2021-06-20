#! /bin/bash

if [[ -d ~/.local/share/omf ]]
then
	echo "oh-my-fish already installed"
else
    cp config.fish ~/.config/fish/config.fish
	curl -L https://get.oh-my.fish | fish;
	omf install bobthefish;
	omf install https://github.com/dracula/fish;
	omf instal pj;
	omf install z;
fi

install_fonts() {
	git clone https://github.com/powerline/fonts.git --depth=1
	cd fonts; ./install.sh; cd ..; rm -rf fonts
}

python_upgrade() {
	brew install python3
	ln -s -f /usr/local/bin/python3.9.4 /usr/local/bin/python
	pip3 install --upgrade pip
}

install_direnv() {
   echo "copying direnvrc"
   cp direnvrc ~/.config/direnv/direnvrc
 }

install_powerline_z() {
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    echo ZSH_THEME="powerlevel10k/powerlevel10k" >> ~/.zshrc
}

install_direnv
