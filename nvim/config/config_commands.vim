" Config file commands
if has('nvim')                  " Check if we're in Neovim
    nnoremap ;si :source ~/.config/nvim/init.vim<CR>   " Source your config at ~/.config/nvim/init.vim
    nnoremap ;ei :e ~/.config/nvim/init.vim<CR>   " Edit your config at ~/.config/nvim/init.vim
else
    nnoremap ;si :source ~/.vimrc<CR>             " Source your config at ~/.vimrc
    nnoremap ;ei :e ~/.vimrc<CR>                  " Edit your config at ~/.vimrc
endif

