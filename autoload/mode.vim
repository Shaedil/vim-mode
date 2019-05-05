if exists("g:loaded_mode_autoload")
    finish
endif
let g:loaded_mode_autoload = 1

function! mode#version()
    return '1.0.0'
endfunction

function! Plugjava()
    call mode#unplug()
    set tabstop=4
    set softtabstop=0
    set shiftwidth=4
    set noexpandtab
    call plug#begin('$VIMRUNTIME/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'mbbill/undotree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'artur-shaik/vim-javacomplete2'
    Plug 'w0rp/ale'
    Plug 'Yggdroot/indentLine'
    Plug 'junnegunn/fzf.vim'
    call plug#end()
endfunction

function! Plugpython()
    call mode#unplug()
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set textwidth=79
    set expandtab
    set autoindent
    set fileformat=unix
    set background=dark
    colorscheme solarized
    let g:airline_theme='solarized'
    call plug#begin('$VIMRUNTIME/plugged')
    Plug 'mbbill/undotree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    if exists('g:loaded_ale')
        Plug 'w0rp/ale'
    if exists('g:loaded_syntastic_plugin')
        Plug 'vim-syntastic/syntastic'
    endif
    call plug#end()
endfunction

function! Plugjs()
    call mode#unplug()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
    call plug#begin('$VIMRUNTIME/plugged')
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mattn/emmet.vim'
    Plug 'junnegunn/fzf.vim'
    if exists('g:loaded_ale')
        Plug 'w0rp/ale'
    if exists('g:loaded_syntastic_plugin')
        Plug 'vim-syntastic/syntastic'
    call plug#end()
endfunction

function! Plughtml()
    call mode#unplug()
    set background=light
    colorscheme default
    set g:airline_theme='sol'
    call plug#begin('$VIMRUNTIME/plugged')
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mattn/emmet.vim'
    Plug 'junnegunn/fzf.vim'
    if exists('g:loaded_ale')
        Plug 'w0rp/ale'
    if exists('g:loaded_syntastic_plugin')
        Plug 'vim-syntastic/syntastic'
    call plug#end()
endfunction

function! Plugcss()
    call mode#unplug()
    call plug#begin('$VIMRUNTIME/plugged')
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mattn/emmet.vim'
    Plug 'junnegunn/fzf.vim'
    if exists('g:loaded_ale')
        Plug 'w0rp/ale'
    if exists('g:loaded_syntastic_plugin')
        Plug 'vim-syntastic/syntastic'
    call plug#end()
endfunction
