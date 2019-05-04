" Author: Shaedil
" Description: A plugin that allows you to change modes in vim. Requires
" vim-plug
" TODO: Create a functions that acts like 'plug#begin' for user inputed plugins

" First, create a function/command that gives you a prompt asking you:
" 'What filetype?' whose answer should activate other functions specific to 
" that filetype. Just create like 3 functions for the general programming 
" languages which activates certain plugins: java (ide), python (normal vim)
" aLaTeX, and more.

scriptencoding utf-8
" check if plugin loaded
if exists('g:loaded_mode')
  finish
endif
let g:loaded_mode = 1
" Check for vimplug
if exists('g:loaded_plug')
    echo "You've not installed vim-plug! Modevim will not work"
endif
let g:loaded_plugplug = 1

" The driver
command Mode :execute ':call Mode("' . input("What filetype?: ") . '")'
" The filter
fun Mode(filetype)
    if (a:filetype == 'java') || (a:filetype == 'cpp')
        :exec ':call OOPft()'
    elseif (a:filetype == 'python') || (a:filetype == 'vim')
        :exec ':call FUNCft()'
    elseif (a:filetype == 'latex') || (a:filetype == 'html')
        :exec ':call Txtft()'
    else
        echo "That filetype isn't supported yet"
    endif
endfun

fun OOPft()
    call plug#begin('~/Desktop/vim/vim81/plugged')
    Plug 'mbbill/undotree'
    Plug 'scrooloose/nerdtree'
    echo " ... Mode initiated"
    call plug#end()
endfun

fun FUNCft()
    " exit out of NERDTree & UndoTree if they are already invoked
    if exists('g:NERDTreeToggle') && exists('g:UndotreeToggle')
        call feedkeys("\:q<CR>")
    endif
    :exec ':colo solarized'
    echo " ... Mode initiated"
endfun

fun Txtft()
    if exists('g:NERDTreeToggle') && exists('g:UndotreeToggle')
        call feedkeys("\:q<CR>")
    endif
    :exec ':colo vintage'
    :exec ':NERDTreeToggle'
    echom " ... Mode initiated"
endfun 
