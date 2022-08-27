" ----------------------
" Vim settings
" ----------------------

let g:loaded_matchparen=1						  " Disable matching parenthesis hightlightg	

syntax on
set nocompatible 
set showcmd                           " Show size of visual selection
set nowrap                            " Don't wrap long lines
set wildmenu                          " Tab autocomplete in command mode
set hlsearch                          " Highlight search results
set ignorecase smartcase              " Search queries intelligently set case
set incsearch                         " Show search results as you type
set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape
set number ruler                      " Display line number
set ts=2 sts=2 sw=2 expandtab         " Set tab character to four space http://vimcasts.org/episodes/tabs-and-spaces/
set backspace=2   		                " Backspace deletes like most programs in insert mode
" ----------------------
" Open new split panes to right and bottom, which feels more natural than Vim’s default
set splitbelow
set splitright
" ----------------------

" ----------------------
" Enable filetype plugin when a file is edited its plugin file is loaded (if there is one for the detected filetype).
filetype on             " enable filetype detection
filetype plugin on      " load file-specific plugins
filetype plugin indent on

autocmd Filetype java source ~/devbith/cursor_output/java/cursor_output.vim
autocmd Filetype javascript source ~/devbith/cursor_output/javascript/cursor_output.vim
autocmd Filetype java setlocal syntax=OFF nonumber autoindent

" Java
iabbrev sout System.out.println("");<Esc>3h2x
iabbrev main public static void main(String[] args) {<CR>}<esc>O


