
"===============================================================================
"    if !has('nvim')
"        set ttymouse=tilix
"    endif
"===============================================================================

set noswapfile
set nu
set rnu
set textwidth=120
set colorcolumn=+1
set wrap
set backspace=0
set hlsearch
set nohlsearch
set expandtab
set background=dark
set tabstop=2
set shiftwidth=2
set showtabline=2
set termguicolors
"hi Cursor guifg=green guibg=green
"hi Cursor2 guifg=red guibg=red
"set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

"Disable Arowskeys in Normal Mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
