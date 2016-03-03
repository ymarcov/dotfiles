set bg=light
colors mac_classic
AirlineTheme silver
set guioptions -=m " no menubar
set guioptions -=T " no toolbar
set guifont=Monaco\ for\ Powerline\ 10

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0

    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
    map <C-k> :cp<CR>
    map <C-j> :cn<CR>
endif
