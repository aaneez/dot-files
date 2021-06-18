#! /bin/bash
R_OPT="-t"

rsync ${R_OPT} ~/.zprofile zprofile
rsync ${R_OPT} ~/.zshrc zshrc
rsync ${R_OPT} ~/.tmux.conf tmux.conf
rsync ${R_OPT} ~/.bash_profile bashProfile
rsync ${R_OPT} ~/.vimrc vimrc
rsync ${R_OPT} ~/.config/fish/config.fish config.fish
