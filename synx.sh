#! /bin/bash
R_OPT="-t"

rsync ${R_OPT} ~/.zprofile .zprofile
rsync ${R_OPT} ~/.zshrc .zshrc
rsync ${R_OPT} ~/.p10k.zsh .p10k.zsh
rsync ${R_OPT} ~/.hyper.js .hyper.js
rsync ${R_OPT} ~/.tmux.conf .tmux.conf
rsync ${R_OPT} ~/.bash_profile .bash_profile
rsync ${R_OPT} ~/.vimrc .vimrc
rsync ${R_OPT} ~/.gitconfig .gitconfig
rsync ${R_OPT} ~/.gitignore_global .gitignore_global
rsync ${R_OPT} ~/.config/fish/config.fish config.fish
rsync ${R_OPT} ~/.config/direnv/direnvrc direnvrc
