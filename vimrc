set nocompatible
filetype plugin on
filetype indent on
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set modeline
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
colors heroku-terminal

" fix C+c in SQL files
let g:ftplugin_sql_omni_key = '<C-j>'
set hls
