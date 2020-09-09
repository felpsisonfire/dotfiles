# Creating the nvim directory
echo -e "Creating Nvim Directory"
mkdir ~/.config/nvim
 
# Copy the vim.init file to the path
cp init.vim ~/.config/nvim/init.vim
echo -e "\e[34mCopied!"
echo -e "Installing VimPlug"
# Installing VimPlug for NeoVim // Documentation -> https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo -e "\e[34mInstalled!"
echo -e "Remember run \e[96m:PlugInstall and reset the aplication"

