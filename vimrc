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
set cinoptions=N-s,g0
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
map <C-BS> :bdel<CR>

" pep8 stuff
let g:autopep8_disable_show_diff=1

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

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0

    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap <C-\> :Ag<SPACE>
    map <C-k> :cp<CR>
    map <C-j> :cn<CR>
endif
