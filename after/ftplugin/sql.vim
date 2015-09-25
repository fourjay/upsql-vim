" use <F12> as a (mostly) invisble intermediate value
" This avoids remap issues with something so fundamental
inoremap <F12>n <CR>
inoremap <cr> <esc>:call upsql#case#uppernewline("\<F12>n")<cr>

inoremap <F12>s <space>
inoremap <space> <C-O>:call upsql#case#upperspace("\<F12>s")<cr>

" trigger only if there is no tab mapping (AKA supertab snipmate etc)
let tab_map = maparg("<tab>", "i")
if tab_map == ''
    " echom "blank tabmap"
    inoremap <F12>t <tab>
    inoremap <C-I> <C-O>:call upsql#case#upperspace("\<F12>t")<cr>
endif
