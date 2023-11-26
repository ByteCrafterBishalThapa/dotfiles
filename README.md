### Introduction
This repo contains configuration files. I use it to setup machine.
<hr>

### Clone this repo and follow this instrusctions 

### 1. Setup <a href="https://www.vim.org/">Vim or NVim</a>
- `ln -s ${dotfile_path}/dotfiles/vimrc ~/.vimrc`
- `ln -s ${dotfile_path}/dotfiles/init.vim ~/.config/nvim`

`${dotfile_path}` Where this repo is cloned 

- Install the vim plugin manager <a href="https://github.com/junegunn/vim-plug">Vundle</a>

 ```
 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
 ```

Open Vim on your terminal and type to install the plugin mentioned in the ~/.vimrc
``:PlugInstall``

- Install <a href="https://github.com/powerline/fonts">Powerline fonts </a>


#### 2. Install <a href="https://ohmyz.sh/#install">Oh My Zsh</a>.
- Create symbolic link `ln -s ${dotfile_path}/dotfiles/zshrc ~/.zshrc`

`${dotfile_path}` Where this repo is cloned 

#### 3. Install <a href="https://brew.sh/"> HomeBrew </a>.
- Follow the last instruction of the instllation. Should be something like below. Don't copy just follow instruction)

``` 
Next steps:
- Run these two commands in your terminal to add Homebrew to your PATH:
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zsh_profile
    eval "$(/opt/homebrew/bin/brew shellenv)"
```

#### 4. Install <a href="https://github.com/tmux/tmux/wiki">Tmux</a> 
- Create symbolic link `ln -s ${dotfile_path}/dotfiles/tmux.conf ~/.tmux.conf`
Install Tmux plugin to copy to system clipboard
- brew install reattach-to-user-namespace

#### 5. Install <a href="https://sdkman.io/install"> SDKMAN </a>

#### 6. Install `brew install ruby`
- Follow the last instruction put the system variable in  `~/.zsh_profile`
 
#### 7. Install `brew install glow`
 https://github.com/charmbracelet/glow

#### 8. Install `brew install slides`
 https://github.com/maaslalani/slides

#### 9. Install `brew install zsh-syntax-highlighting `
 https://formulae.brew.sh/formula/zsh-syntax-highlighting

Note: Follow the installation instruction

#### 10. Install `brew install lf`
 https://formulae.brew.sh/formula/lf

### <a href="notes.adoc">MORE</a> 











