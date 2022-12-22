" ----------------------
" Vim settings
" ----------------------

let g:loaded_matchparen=1						  " Disable matching parenthesis hightlightg	

syntax on
highlight Comment ctermfg=lightblue
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

autocmd Filetype java source ~/thapabishal/cursor_output/java/cursor_output.vim
autocmd Filetype javascript source ~/thapabishal/cursor_output/javascript/cursor_output.vim
autocmd Filetype java setlocal syntax=ON nonumber autoindent

" Java
iabbrev sout System.out.println("");<Esc>3h2x
iabbrev main public static void main(String[] args) {<CR>}<esc>O

" Sets Alt + --> (tab next) & Alt + <-- (tab previous)
" execute "set <M-f>=\ef"
" execute "set <M-b>=\eb"
" map <M-f> gt
" map <M-b> gT

nnoremap <tab> gt 
nnoremap <S-tab> gT


" Movement in insert mode
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
inoremap <C-w> <C-o>w
inoremap <C-b> <C-o>b

" Also allow line-wise scrolling
inoremap <C-e> <C-o><C-e>
inoremap <C-y> <C-o><C-y>


" Digraph remapping 
inoremap <C-y> <C-k>

"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
"   autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
" augroup END
