set nocompatible                      " Use VIM settings rather than Vi settings;

set mouse=a                           " Mouse mode one (Sometime usefull) 

set path+=**
" command! MakeTags !ctags -R  --exclude=.git --exclude=.idea --exclude=node_modules --exclude='*.class' .
" ----------------------
let g:loaded_matchparen=1						  " Disable matching parenthesis hightlightg	

let mapleader = " "                   " Map leader to Space
map <leader>th :set hlsearch!<CR>
map <leader>s :w<CR>
map <leader>q :q<CR>
map <leader>fq :q!<CR>

" searching file under current and sub-directories
nmap <leader>f :find<space>

" switch between tabs
nnoremap <leader>l gt 
nnoremap <leader>h gT

" move current line down
nnoremap <C-j> :m +1<CR>
nnoremap <C-k> :m -2<CR>
inoremap <C-j> <Esc>:m +1<CR>gi
inoremap <C-k> <Esc>:m -2<CR>gi

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" system clipboard
vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>y "+yy
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P

" scrolling
nmap <leader>d <C-d>
nmap <leader>u <C-u>
vmap <leader>d <C-d>
vmap <leader>u <C-u>

" toggles spell checking
nmap <leader>tsc :set spell! spelllang=en_us<CR>
" toggles word wrap
nmap <leader>tw :set wrap! linebreak<CR>
" -------------------------------
nnoremap <leader>tr :call NumberToggle()<cr>

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" --------------------------------

syntax on
highlight Comment ctermfg=lightblue
set title                            " Show title
set showcmd                           " Show size of visual selection
set nowrap                            " Don't wrap long lines
set wildmenu                          " Tab autocomplete in command mode
set nohlsearch                          " Highlight search results
set ignorecase smartcase              " Search queries intelligently set case
set incsearch                         " Show search results as you type
set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape
set number ruler                      " Display line number
set ts=2 sts=2 sw=2 expandtab         " Set tab character to four space http://vimcasts.org/episodes/tabs-and-spaces/
set backspace=2   		                " Backspace deletes like most programs in insert mode
" Hide mode status
" set noshowmode                        
set relativenumber
set t_Co=256                          " Set terminal color
set background=dark                   " 
" ----------------------
" Open new split panes to right and bottom, which feels more natural than Vim’s default
set splitbelow
set splitright

" ----------------------
" Split Horizontal by C+w _ and Vertical with C+w | 
nnoremap <C-w>_ <C-w>s
nnoremap <C-w>\| <C-W>v

" ----------------------
" Make adjusting split size bit eaiser
noremap <C-w><Left> :vertical resize +3<CR>
noremap <C-w><Right> :vertical resize -3<CR>
noremap <C-w><Up> :resize +3<CR>
noremap <C-w><Down> :resize -3<CR>


" ----------------------
" Enable filetype plugin when a file is edited its plugin file is loaded (if there is one for the detected filetype).
filetype on             " enable filetype detection
filetype plugin on      " load file-specific plugins
filetype plugin indent on

autocmd Filetype java source ~/thapabishal/cursor_output/java/cursor_output.vim
autocmd Filetype javascript source ~/thapabishal/cursor_output/javascript/cursor_output.vim

" Java
iabbrev sout System.out.println("");<Esc>3h2x
iabbrev psvm public static void main(String[] args) {<CR>}<esc>O

" Sets Alt + --> (tab next) & Alt + <-- (tab previous)
" execute "set <M-f>=\ef"
" execute "set <M-b>=\eb"
" map <M-f> gt
" map <M-b> gT

" Use a line cursor within insert mode and a block cursor everywhere else.
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


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
    
" Split border style
highlight VertSplit cterm=none gui=none
highlight LineNr ctermfg=grey

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'https://github.com/ap/vim-css-color'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'preservim/nerdtree'
call vundle#end()

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'
let g:airline_section_z = ''

" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3

nmap <leader>m :NERDTreeToggle<CR>
