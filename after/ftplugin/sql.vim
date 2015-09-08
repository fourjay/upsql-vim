inoremap <silent> <cr> <esc>:call upsql#case#upper("\n")<cr>
" an intermediate value for <space> to avoid remap issues
inoremap <F12> <space>
inoremap <space> <esc>:call upsql#case#upper("\<F12>")<cr>
