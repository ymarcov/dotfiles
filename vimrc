execute pathogen#infect()

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "tomorrow"
let g:airline_powerline_fonts = 1

set nocompatible
filetype plugin on
filetype indent on
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set modeline
set hidden
syntax on
set noswapfile
set nu
set ic
set cindent
set cinoptions=g-1
set cino=N-s
set list
set listchars=tab:\ \ ,trail:~
set background=dark
set cursorline
set cursorcolumn
colors vividchalk

set path=.,**
set wildmenu
set wildignore+=*.o,*.a,*.so
set wildignorecase

" CtrlP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

" fix C+c in SQL files
let g:ftplugin_sql_omni_key = '<C-j>'
set hls

" Reselect visual block aftet indent/outdent
vnoremap < <gv
vnoremap > >gv

" make Y behave like other capitals
nnoremap Y y$

" Buffer switching
nnoremap <C-n> :bp<CR>
nnoremap <C-m> :bn<CR>
