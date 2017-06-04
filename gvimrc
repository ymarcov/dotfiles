if strftime("%H") < 17
    set bg=light
    colors mac_classic
else
    set bg=dark
    colors SerialExperimentsLain
endif

AirlineTheme tomorrow
set guioptions -=m " no menubar
set guioptions -=T " no toolbar
"set guifont=Powerline\ Consolas\ 12
"set guifont=Code\ New\ Roman\\,\ 12
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11
set guifont=Monaco\ for\ Powerline\ 13

set lines=60 columns=150

if &diff
    set lines=70 columns=200
    colors visualstudio
endif

"highlight CursorColumn guibg=#f8f8f8 ctermbg=15 gui=NONE cterm=NONE
highlight GitGutterAdd guifg=#00aa00
highlight GitGutterChange guifg=#ff8c00
highlight GitGutterDelete guifg=#ff0000

let g:ctrlp_match_window = 'results:40'
