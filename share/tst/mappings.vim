function! RunTst()
    botright split
    terminal runtst
    normal i
endfunction

function! RunGdb()
    botright split
    terminal rungdb
    normal i
endfunction

nnoremap <silent> <leader>rt :call RunTst()<cr>
nnoremap <silent> <leader>rg :call RunGdb()<cr>
