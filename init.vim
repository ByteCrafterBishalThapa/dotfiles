set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set wildoptions-=pum        " Horizontal wild menu 

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

source ~/.vimrc

" ------------------ Plugin -------------
call plug#begin()
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-scripts/ReplaceWithRegister'
Plug 'michaeljsmith/vim-indent-object'
Plug 'christoomey/vim-system-copy'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive' 
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank'
 
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Mofiqul/vscode.nvim'
call plug#end()

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

source ~/.config/nvim/custom-lua-config.lua
colorscheme vscode


" Go to mappings
nmap <silent> Cd <Plug>(coc-definition)
nmap <silent> Ct <Plug>(coc-type-definition)
nmap <silent> Cp <Plug>(coc-implementation)
nmap <silent> Cr <Plug>(coc-references)

" Refactoring mappings
nmap CR <Plug>(coc-rename)
nmap CF  <Plug>(coc-format)
xmap CF  <Plug>(coc-format-selected)
nmap CA  <Plug>(coc-codeaction)
xmap CA  <Plug>(coc-codeaction-selected)
nmap CX  <Plug>(coc-fix-current)

" Coc lists mappings
nnoremap <silent> Cld  :<C-u>CocList diagnostics<cr>
nnoremap <silent> Cle  :<C-u>CocList extensions<cr>
nnoremap <silent> Clc  :<C-u>CocList commands<cr>
nnoremap <silent> Clo  :<C-u>CocList outline<cr>
nnoremap <silent> Cls  :<C-u>CocList -I symbols<cr>

