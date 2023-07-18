" Function to delete terminal buffer
function! KillTerminalBuffer()
    for i in range(1, bufnr('$'))
        if getbufvar(i, '&buftype') == 'terminal'
            execute 'bdelete!' i
            break
        endif
    endfor
endfunction

" Leader + q to run the function
nnoremap <leader>q :call KillTerminalBuffer()<CR>

