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
set ts=2 sts=2 sw=2 noexpandtab       " Set tab character to four space http://vimcasts.org/episodes/tabs-and-spaces/


" Open new split panes to right and bottom, which feels more natural than Vim’s default
set splitbelow
set splitright


