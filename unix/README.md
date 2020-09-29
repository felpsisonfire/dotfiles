# Before add the files to the system 

Before use the setup.sh script, install the following packages

```
sudo apt install git
sudo apt install zsh
```

Apply the ZSH to the terminal

```
chsh -s $(which zsh)
```

Install the Autosuggestions to the ZSH

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Then, copy the files using the script

```
chmod +x setup.sh
```

And run the script

```
./setup.sh
```

Install PlugInstall

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
Open the nvim and run the PlugInstall

```
:PlugInstall
```

