set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set mouse=v                 " middle-click paste with mouse
set wildoptions-=pum        " Horizontal wild menu 

call plug#begin()
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-scripts/ReplaceWithRegister'
Plug 'michaeljsmith/vim-indent-object'
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-fugitive' 
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()



source ~/.vimrc
