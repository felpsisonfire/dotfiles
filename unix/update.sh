echo -e "Coping \e[34minit.vim"
cp ~/.config/nvim/init.vim init.vim

echo -e "Coping Question generator script"
cp ~/create.sh create.sh

echo -e "Coping i3 config file"
cp ~/.config/i3/config config

echo -e "Pushing modifications"

git add .
git commit -m "update scripts"
git push origin master
