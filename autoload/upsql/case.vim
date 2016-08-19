function! upsql#case#uppernewline(char) abort
    let save_cursor = getcurpos()
    call s:upcase()
    call setpos('.', save_cursor)
    call feedkeys( 'a' . a:char )
endfunction

function! upsql#case#upperspace(char) abort
    let save_cursor = getcurpos()
    call s:upcase()
    call setpos('.', save_cursor)
    call feedkeys( a:char )
endfunction

function s:upcase() abort
    let l:end_position = len(getline('.'))
    let l:current_pos = getpos('.')[2]
    if match( getline('.'), '\<\w\+\>') != -1
                \ && l:end_position != 0
        " run programatic substitution against each word
        s/\M\<\w\+\>/\=synIDattr(
                    \   synID(line('.'),col('.'),1),
                    \   'name'
                    \ ) =~ 'sql\%(keyword\|operator\|statement\|type\)'
                    \   ?
                    \       toupper(submatch(0))
                    \       :submatch(0)/g
        " back to end of line then insert original character
    endif
endfunction
