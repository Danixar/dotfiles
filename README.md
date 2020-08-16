# dotfiles
<img width="1284" alt="Screen Shot 2020-08-15 at 10 08 12 PM" src="https://user-images.githubusercontent.com/49355717/90326291-f38b0a80-df43-11ea-8a51-2729d3e39d31.png">
Evan Wiegers - customizing zsh and iTerm2

# Tutorial 
1. ```git clone https://github.com/Danixar/dotfiles.git```
2. [Download the below resources](#Downloads)
3. Set iTerm2 font/non-ascii-font (RobotoMono Nerd Font), colour preset (Dark Background), and keyboard preset (natural text editing)
4. Configure dotfiles by creating .zshrc and .profile in $HOME and add source commands to them to run their respective dotfiles from this git repository
  * i.e. In $HOME/.zshrc add ```source ~/dotfiles/.zshrc```
5. Create files $HOME/secrets.sh to include all secret ENV variables 

# Downloads
1. zsh and affiliated resources
  * i. zsh itself - ```brew install zsh``` <br/>
  * ii. oh my zsh - ```sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"``` <br/>
  * iii. powerlevel9k - ```git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k``` <br/>
  * iv. zsh plugins 
    * i. autosuggestions - ```git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions``` <br/>
    * ii. syntax highlighting - ```git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting``` <br/>
    * iii. completions - ```git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions``` <br/>
2. iTerm2 - [Download](https://www.iterm2.com/)
3. Nerd Fonts (Patched Fonts) - [Download](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts) *or* use ```brew tap homebrew/cask-fonts; brew search nerd; brew install robotomono-nerd-nerd-font```

# Links
1. [zsh](https://linux.die.net/man/1/zsh)
2. [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh)
3. [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
4. [Powerlevel9k](https://github.com/bhilburn/powerlevel9k)
5. [ampersandre/dotfiles](https://github.com/ampersandre/dotfiles)
