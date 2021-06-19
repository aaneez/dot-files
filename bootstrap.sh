#! /bin/bash

if [[ -d  /Users/aaneez/.local/share/omf ]]
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
cd fonts
./install.sh
cd ..
rm -rf fonts
}