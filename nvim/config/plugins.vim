" Initialization for vim-plug
call plug#begin('~/.config/nvim/plugged')

" Plugin list
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'github/copilot.vim'
Plug 'tpope/vim-surround'      " Surround text with something
Plug 'tpope/vim-repeat'        " Allow repeating of custom commands like surround
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " fuzzy finder
Plug 'junegunn/fzf.vim'        " fzf for vim
Plug 'tpope/vim-commentary'    " commenting text
Plug 'tpope/vim-fugitive'      " git wrapper
Plug 'tpope/vim-abolish'       " Smart replace, abbreviations, convert case
Plug 'christoomey/vim-tmux-navigator'

" End of vim-plug initialization
call plug#end()

