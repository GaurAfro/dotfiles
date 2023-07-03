" Leader key and shortcuts
let mapleader = "\<Space>"     " Set Space as the leader key
nnoremap <leader>R :vsplit \| terminal python3 %<CR>    " Leader + R to split window and run Python3
tnoremap <leader>t <C-\><C-n>:if &buftype == 'terminal' \| bd! \| endif<CR>    " Leader + t to close terminal in both terminal and normal modes
nnoremap <leader>t :if &buftype == 'terminal' \| bd! \| endif<CR>

" Create split windows
nnoremap <leader>\ :vsplit<CR>          " Vertical
nnoremap <leader>- :split<CR>           " Horizontal
nnoremap <leader>c :close<CR>           " Close

" Buffer navigation settings
nnoremap <leader>bp :bprevious<CR>  " Switch to previous buffer
nnoremap <leader>bn :bnext<CR>      " Switch to next buffer
nnoremap <leader>lb :ls<CR>    " To list all open buffers
nnoremap <leader>bd :bd<CR>    " To delete the current buffer
" To switch to a specific buffer
nnoremap <leader>b :execute 'b '<CR> 

" Save and quit commands in normal mode without <SHIFT>
nnoremap ;w :w<CR>             " Save 
nnoremap ;w1 :w!<CR>           " Force save
nnoremap ;wq :wq<CR>           " Save and quit
nnoremap ;wq1 :wq!<CR>         " Force save and quit
nnoremap ;q :q<CR>             " Quit
nnoremap ;q1 :q!<CR>           " Force quit

" Copy till the end of the line To make it behave like D or C
nnoremap Y y$


" Move you to the last buffer you were in
nnoremap gb :b#<CR>                 

" Toggle hlsearch with <leader>h
nnoremap <leader>h :set hlsearch!<CR>

" Toggle line numbers with <leader>n
" nnoremap <leader>n :set number!<CR>

" Toggle relative line numbers with <leader>r
" nnoremap <leader>r :set relativenumber!<CR> 

" Toggle paste mode with <leader>p
nnoremap <leader>p :set paste!<CR>

" Toggle spell check with <leader>s
" nnoremap <leader>s :set spell!<CR>
" nnoremap <leader>ss :set spell!<CR>


" -------------------
" Custom key mappings
" -------------------
"  <leader> is mapped to the space bar
"  <localleader> is mapped to the backslash key
"  <leader><leader> is mapped to the comma key
"  <leader><space> is mapped to the backtick key
"  <leader><tab> is mapped to the tilde key
"  <leader><cr> is mapped to the backspace key
"  <leader><esc> is mapped to the escape key
"  <leader><leader><leader> is mapped to the semicolon key
"  <leader><leader><space> is mapped to the period key
"  <leader><leader><tab> is mapped to the comma key
"  <leader><leader><cr> is mapped to the slash key
"  <leader><leader><esc> is mapped to the question mark key
"  <leader><leader><leader><leader> is mapped to the colon key
"  <leader><leader><leader><space> is mapped to the semicolon key
"  <leader><leader><leader><tab> is mapped to the period key
"  <leader><leader><leader><cr> is mapped to the slash key
