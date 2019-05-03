" Author: Shaedil
" Description: A plugin that allows you to change modes in vim. Requires
" vim-plug

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
    finish
endif
let g:loaded_plugplug = 1

command Mode :execute ':call Mode("' . input("What filetype?: ") . '")'

fun Mode(content)
    if (a:content = 'java' || a:content = 'cpp')
        :exe ':call OOPft()'
    if (a:content = 'python' || a:content = 'vim')
        :exe ':call FUNCft()'
    if (a:content = 'latex' || a:content = 'html')
        :exe ':call Txtft()'
    else:
        echo "That filetype isn't supported yet"
    endif
endfun

fun OOPft()
    call plug#begin(~/Desktop/vim/vim81/plugged)
    Plug 'mbbill/undotree'
    Plug 'scrooloose/nerdtree'
    call plug#end()
endfun

fun FUNCft()
    " exit out of NERDTree & UndoTree if they are already invoked
    if exists('g:NERDTreeToggle') && exists('g:UndotreeToggle')
        call feedkeys("\:q<CR>")
    endif
    :exe ':colo solarized'
    
endfun

fun Txtft()
    if exists('g:NERDTreeStatusline') && exists('g:UndotreeToggle')
        call feedkeys("\:q<CR>")
    endif
    ;exe ':colo vintage'
    :exe ':NERDTreeToggle'
endfun
