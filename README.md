### Introduction
This repo contains my dotfile setup configuration. It helps me to setup and maintain my machine.
<hr>

### 1. Create symbolic link
- `ln -s ${path}/dotfiles/vimrc ~/.vimrc`

#### 2. Install <a href="https://ohmyz.sh/#install">Oh My Zsh</a>.
- Create symbolic link `ln -s ${path}/dotfiles/zshrc ~/.zshrc`

`${path}` Where this repo is cloned 

#### 3. Install <a href="https://brew.sh/"> HomeBrew </a>.
- Follow the last instruction of the instllation. Should be something like below (don't copy: follow instruction)

``` 
Next steps:
- Run these two commands in your terminal to add Homebrew to your PATH:
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/devbith/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
```

#### 4. Install Tmux 
```brew install tmux```
- Create symbolic link `ln -s ${path}/dotfiles/tmux.conf ~/.tmux.conf`
