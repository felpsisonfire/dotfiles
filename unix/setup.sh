# Creating the nvim directory
echo -e "Creating Dev and Learn Directories"
mkdir ~/dev/
mkdir ~/dev/work
mkdir ~/dev/fun
mkdir ~/dev/science

echo -e "Creating Nvim Directory"
mkdir ~/.config/nvim

# Copy the .bashrc and .bash_profile to the root
sudo cp ../.bashrc ~/.bashrc
sudo cp ../.bash_profile ~/.bash_profile
sudo cp  ../.zshrc ~/.zshrc
cp create.sh ~/create.sh

# Giving permissions to the question create script 
chmod +x create.sh

# Giving update permissions
chmod +x update.sh

# Copy the vim.init file to the path
cp init.vim ~/.config/nvim/init.vim
echo -e "\e[34mCopied!"
echo -e "Installing VimPlug"
# Installing VimPlug for NeoVim // Documentation -> https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo -e "\e[34mInstalled!"
echo -e "Remember run \e[96m:PlugInstall and reset the aplication"

