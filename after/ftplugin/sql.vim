" use <F12> as a (mostly) invisble intermediate value
" This avoids remap issues with something so fundamental
inoremap <F12>n <CR>
inoremap <cr> <esc>:call upsql#case#uppernewline("\<F12>n")<cr>

inoremap <F12>s <space>
inoremap <space> <C-O>:call upsql#case#upperspace("\<F12>s")<cr>
