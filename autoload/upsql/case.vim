function! upsql#case#upper()
    let l:end_position = len(getline("."))
    let l:current_pos = getpos(".")[2]
    if match( getline('.'), '\<\w\+\>') != -1
                \ &&  l:end_position == l:current_pos
                \ && l:end_position != 0
        " run programatic substitution against each word
        s/\<\w\+\>/\=synIDattr(
                    \   synID(line('.'),col('.'),1),
                    \   'name'
                    \ ) =~ 'sql\%(keyword\|operator\|statement\|type\)'
                    \   ?
                    \       toupper(submatch(0))
                    \       :submatch(0)/g
        " back to end of line then insert <Cr>
        execute "normal! $A\<cr>"
    else
        " just insert if not triggered
        execute "normal! a\<cr>"
    endif
endfunction

