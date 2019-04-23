" Author: Shaedil
" Description: A plugin that allows you to change modes in vim

" First, create a function/command that gives you a prompt asking you:
" 'What filetype?' whose answer should activate other functions specific to 
" that filetype. Just create like 3 functions for the general programming 
" languages which activates certain plugins: java (ide), python (normal vim)
" aLaTeX, and more.

command Mode :execute ':call Mode("' . input("What filetype?: ") . '")'
fun Mode(content)
    if content = 'java' || a:content = 'cpp'
        :execute ':call OOPft()'
    if content = 'python' || a:content = 'vim'
        :execute ':call FUNCft()'
    if content = 'latex' || a:content = 'html'
        :execute ':call Txtft()'
    else:
        echo "That filetype isn't supported yet"
endfun

fun OOPft()
    :exec ':NERDTreeToggle'
    :exec ':UndotreeToggle'
    :exec ':colo solarized'
endfun

fun FUNCft()
    :exec ':colo vintage'
endfun

fun Txtft()
    ;exec ':colo vintage'
    :exec ':NERDTreeToggle'
endfun
