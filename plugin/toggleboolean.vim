" toggleboolean.vim - Toggle Boolean
" Author:       maomh <https://github.com/maomh>
" Version:      1.0

if exists("g:loaded_toggleboolean") || &cp
    finish
endif
let g:loaded_toggleboolean= 1

let g:toggle_boolean_no_mapping=0
let g:toggle_boolean_dict = { 
            \ "true": "false", "false": "true",
            \ "True": "False", "False": "True",
            \ "TRUE": "FALSE", "FALSE": "TRUE",
            \ "yes": "no", "no": "yes",
            \ "Yes": "No", "No": "Yes",
            \ "YES": "NO", "NO": "YES",
            \ "on": "off", "off": "on",
            \ "On": "Off", "Off": "On",
            \ "ON": "OFF", "OFF": "ON",
            \ "1": "0", "0": "1",
            \ }

function! s:toggleboolean() abort
    let word = expand('<cword>')
    if has_key(g:toggle_boolean_dict, word)
        let val = g:toggle_boolean_dict[word]
        return "mpviwc".val."\<esc>`p"
    endif
    return "mp:\<c-u>echo '\"".word."\" is not boolean.'\<esc>`p"
endfunction 

nmap <expr> <Plug>ToggleBoolean <sid>toggleboolean()

if g:toggle_boolean_no_mapping == 0
    nnoremap <nowait><silent> <leader>bb <Plug>ToggleBoolean
endif

