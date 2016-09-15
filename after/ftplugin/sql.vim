inoremap <buffer> <cr> <C-R>=upsql#case#uppercase("cr")<cr>

inoremap <buffer> <space> <C-R>=upsql#case#uppercase("space")<cr>

" trigger only if there is no tab mapping (AKA supertab snipmate etc)
let tab_map = maparg("<tab>", "i")
if tab_map == ''
    inoremap <buffer> <tab> <C-R>=upsql#case#uppercase("tab")<cr>
endif
