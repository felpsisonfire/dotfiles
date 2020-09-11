echo -e "Coping atual configuration to the repository"
echo -e "Coping \e[34minit.vim"
cp ~/.config/nvim/init.vim init.vim

echo -e "Coping \e[34m.bashrc"
cp ~/.bashrc .bashrc

echo -e "Coping \e[34m.bash_profile"
cp ~/.bash_profile .bash_profile

echo -e "Pushing mods"

git add .
git commit -m "update scripts"
git push origin master
