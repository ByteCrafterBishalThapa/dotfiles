" ---------------------- Vim Improed Config --------------------------------
let mapleader = " "                   " Map leader to Space
let g:loaded_matchparen=1						  " Disable matching parenthesis hightlightg	

" ----------------------------------------------------------------------------------------------------

" command! MakeTags !ctags -R  --exclude=.git --exclude=.idea --exclude=node_modules --exclude='*.class' .

" ----------------------------------------------------------------------------------------------------
map <leader>s :w<CR>
map <leader>qq :q<CR>
map <leader>qa :qa<CR>
map <leader>qf :q!<CR>

nmap <leader>f :FZF<CR>
map <leader>th :set hlsearch!<CR>

nnoremap <leader>l gt
nnoremap <leader>h gT

nnoremap <Leader>[ :bp<CR>
nnoremap <Leader>] :bn<CR>

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Show file details
nnoremap <Leader>i :echo expand('%:p')<CR>
" ----------------------------------------------------------------------------------------------------
" Copy to system clipboard
nnoremap <Leader>y "+y
vnoremap <Leader>y "+y

" Paste from system clipboard
nnoremap <Leader>p "+P
vnoremap <Leader>p "+P
" ----------------------------------------------------------------------------------------------------
nmap <leader>ec !!zsh<CR>
nmap <leader>rc :source ~/.vimrc<CR>

" Toggling whitespace
nmap <leader>tsc :set spell! spelllang=en_us<CR>
nmap <leader>tw :set wrap! linebreak<CR>

" Digraph mapping
map <Leader>dua i↑<Esc>
map <Leader>dda i↓<Esc>
map <Leader>dla i←<Esc>
map <Leader>dra i→<Esc>

" Toggle relative number with <leader>tr
nnoremap <silent> <leader>tr :set relativenumber!<CR>
" ----------------------------------------------------------------------------------------------------
syntax on
highlight Comment ctermfg=lightblue

" ----------------------------------------------------------------------------------------------------
set path+=**                          " Adds all subdirectories to the path
set wildignore+=*.class
set mouse=a                           " Enables mouse support in Vim
set showcmd                           " Show size of visual selection
set showmatch                         " Show matching braces
set nowrap                            " Don't wrap long lines
set wildmenu                          " Tab autocomplete in command mode
set ignorecase smartcase              " Search queries intelligently set case
set incsearch                         " Show search results as you type
set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape
set number ruler                      " Display line number
set ts=2 sts=2 sw=2 expandtab         " Set tab character to four space http://vimcasts.org/episodes/tabs-and-spaces/
set backspace=2   		                " Backspace deletes like most programs in insert mode
" Hide mode status
set noshowmode
"set nonumber
"set relativenumber
set t_Co=256                          " Set terminal color
set background=dark                   " no comment
set noro                              " By default, vimdiff opens file in readonly mode, this enables editing
set textwidth=140
set rtp+=/opt/homebrew/opt/fzf        " Fuzzyfinder Vim integration 
" ----------------------------------------------------------------------------------------------------
"  Highlight any text that exceeds 140 characters with a red background and white text.
"
" highlight ErrorLine ctermbg=black ctermfg=red 
" match ErrorLine /\%>240v.\+/
" ----------------------------------------------------------------------------------------------------

" Open new split panes to right and bottom, which feels more natural than Vim’s default
set splitbelow
set splitright
" ----------------------------------------------------------------------------------------------------
" Split Horizontal by C+w _ and Vertical with C+w | 
nnoremap <C-w>_ <C-w>s
nnoremap <C-w>\| <C-W>v

" ----------------------------------------------------------------------------------------------------
" Make adjusting split size bit eaiser
noremap <C-w><Left> :vertical resize +3<CR>
noremap <C-w><Right> :vertical resize -3<CR>
noremap <C-w><Up> :resize +3<CR>
noremap <C-w><Down> :resize -3<CR>


" ----------------------------------------------------------------------------------------------------
" Enable filetype plugin when a file is edited its plugin file is loaded (if there is one for the detected filetype).
filetype on             " enable filetype detection
filetype plugin on      " load file-specific plugins
filetype plugin indent on

autocmd FileType asciidoc setlocal spell spelllang=en_us

" Define abbreviation for Java files
autocmd FileType java :abbr sout System.out.println("");<Esc>3h2x
autocmd FileType java :abbr psvm public static void main(String[] args) {<CR>}<Esc>ko

autocmd FileType nerdtree nnoremap <buffer> <Esc> <C-w>l

" Sets Alt + --> (tab next) & Alt + <-- (tab previous)
" execute "set <M-f>=\ef"
" execute "set <M-b>=\eb"
" map <M-f> gt
" map <M-b> gT

" Use a line cursor within insert mode and a block cursor everywhere else.
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Also allow line-wise scrolling
inoremap <C-e> <C-o><C-e>
inoremap <C-y> <C-o><C-y>
    
" Split border style
highlight VertSplit cterm=none gui=none
highlight LineNr ctermfg=grey

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/ap/vim-css-color'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/tpope/vim-commentary'
Plugin 'https://github.com/vim-scripts/ReplaceWithRegister'
Plugin 'preservim/nerdtree'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'christoomey/vim-system-copy'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'dense-analysis/ale'
call vundle#end()

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'
let g:airline_section_z = ''
let g:airline#extensions#tabline#buffer_nr_function = 'AirlineTablineFilename'

" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=60

nmap <silent> <leader>m :silent NERDTreeToggle<CR>
nmap <silent> <leader>ef :silent NERDTreeFind<CR>
" AsciiDoc preview
nmap <leader>av :w !asciidoc-view -<CR><CR>

" makes Ascii art font
nmap <leader>1 :.!toilet -w 200 -f term -F border<CR>

" presentation mode
" noremap <Left> :silent bp<CR> :redraw!<CR>
" noremap <Right> :silent bn<CR> :redraw!<CR>

function! HasTrailingWhitespace()
  if search('\s\+$', 'n', line('.') + 0, line('$')) > 0
    return ' [trailing]'
  else
    return ''
  endif
endfunction

" STATUS LINE ------------------------------------------------------------

" Clear status line when vimrc is reloaded.
set statusline=
set statusline+=%#LineNr#

" Use a divider to separate the left side from the right side.
set statusline+=%=
 
" Status line right side.
set statusline+=%{fugitive#statusline()}
set statusline+=\ %m\ %M\ %y\ %{&fileencoding}\ %R
set statusline+=\ %l\:%c\ [%p%%]
set statusline+=%{HasTrailingWhitespace()}

" Show the status on the second to last line
set laststatus=2

" Disable indentLine plugin by default
let g:indentLine_enabled = 0

" Enable indentLine plugin for yaml file type 
autocmd FileType yaml let g:indentLine_enabled = 1
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'

" Disable ALE by default for all file types
" Enable ALE only for YAML files
let g:ale_enabled = 0
autocmd FileType yaml let g:ale_enabled = 1

" Format Java code using google-java-format
function! FormatJava()
    silent execute '!java -jar ~/thapabishal/dotfiles/lib/google-java-format.jar --replace %'
    edit!
    redraw!
endfunction
autocmd FileType java nnoremap <leader>F :call FormatJava()<CR>

if &diff
    syntax off
    set textwidth=500
endif
