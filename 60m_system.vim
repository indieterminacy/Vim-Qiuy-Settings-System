    " Automatically save before commands like :next and :make
    "write before hiding a buffer
        " set autowrite
        set shell=bash
    " make <C-a> and <C-x> play well with zero-padded numbers (i.e. don't consider them octal or hex)
        set nrformats=
"== Fast editing and reloading of vimrc configs
"==== 10 Autowriting of key files
    " autocmd bufwritepost .vimrc source $MYVIMRC
    " autocmd bufwritepost ~/$VimQiuy60/ind_mappings.vim source $MYVIMRC
    " autocmd bufwritepost ~/$VimQiuy56/ind_paths.vim source $MYVIMRC
    " autocmd bufwritepost ~/$VimQiuy56/ind_pathways.vim source $MYVIMRC
"==== Reload Vimrc
    augroup myvimrc
        au!
        au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC |
            \ if has('gui_running') |
                \ source $MYGVIMRC |
            \ endif
    augroup END
    autocmd! bufwritepost vimrc source ~/.vimrc
"== 50 Directories
    " Store swap files in one of these directories"
    " (in case swapfile is ever turned on)
    " Spitting line below out of curiosity
        set directory=~/.vim/.tmp ",~/tmp,/tmp
