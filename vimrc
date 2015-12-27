execute pathogen#infect()

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "powerlineish"
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
set bg=dark
colors heroku-terminal

" fix C+c in SQL files
let g:ftplugin_sql_omni_key = '<C-j>'
set hls
set ls=2 " always show file name
set stl+=%F

" next/previous buffer
map <C-m> :bn<CR>
map <C-n> :bp<CR>

" CtrlP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

function LightTheme()
    set bg=light
    colors github
    AirlineTheme silver
endfunction

function DarkTheme()
    set bg=dark
    colors heroku-terminal
    AirlineTheme powerlineish
endfunction
