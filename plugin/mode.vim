" Vim plugin that allows usage of 'modes' like in emacs
" Last Change:  2019 May 15
" Maintainer:   Shaedil <shaedildider@gmail.com>
" License:      This file is protected under the MIT License

if exists("g:loaded_mode")
  finish
endif
let g:loaded_mode = 1

let s:save_cpo = &cpo
set cpo&vim

command Mode :exec ':call Mode("' . input("What filetype?: ") . '")'

function! Mode(filetype)
    if (a:filetype == 'java')
        call mode#plugjava()
    if (a:filetype == 'js' || a:filetype == 'javascript')
        call mode#plugjs()
    if (a:filetype == 'python' || a:filetype == 'python')
        call mode#plugpython()
    if (a:filetype == 'html')
        call mode#plughtml()
    if (a:filetype == 'css')
        call mode#plugcss()
endfunction

let &cpo = s:save_cpo
