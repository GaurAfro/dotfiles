" Syntax and filetype settings
syntax on                       " Enable syntax highlighting for semantic color coding
filetype plugin indent on       " Enable filetype detection for appropriate plugins and indentation

" command! -nargs=* Copilot vertical Copilot <args>

" Tab and indentation settings
set expandtab                   " Use spaces instead of tabs for consistency across editors
set shiftwidth=4                " Set tab width to 4 spaces
set softtabstop=4               " Set Tab key to insert spaces for alignment
set tabstop=4                   " Set tab width to 4 spaces
set smarttab                    " Set Tab key to insert spaces for alignment
set autoindent                  " Copy indent from current line when starting a new line
set smartindent                 " Automatically indent based on syntax

" Search settings
set hlsearch                    " Highlight search results  (use :nohlsearch to turn off)
set incsearch                   " Incremental search (search as you type)
set smartcase                   " Ignore case when searching lowercase, but not when searching uppercase

" Mouse and line number settings
set mouse=a                     " Enable all mouse functions
set number                      " Display line numbers
set relativenumber              " Show line numbers relative to cursor position

" Status bar settings
set laststatus=2                " Always show status bar
set statusline=%F%m%r%h%w%=[%{&ff}/%Y]\ [%l/%L]\ [%p%%]\ %c:%v\ %P
set showcmd                     " Show command in bottom bar
set ruler                       " Show current cursor position
set showmatch                   " Show matching brackets

" Color settings
set background=dark             " Set dark background
set t_Co=256                    " Use 256 colors
" colorscheme solarized           " Set color scheme

" Window settings
set splitbelow                  " Split windows below instead of above
set splitright                  " Split windows right instead of left
set winheight=5                 " Set minimum window height to 5 lines
set winwidth=5                  " Set minimum window width to 5 columns

" Miscellaneous settings
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set hidden                      " Allow switching between buffers without saving
set history=1000                " Store 1000 commands in history
set ignorecase                  " Ignore case when searching
set lazyredraw                  " Don't redraw screen while executing macros
set magic                       " Set magic on for regular expressions  
set modelines=0                 " Don't parse modelines
set scrolloff=8                 " Keep 3 lines above/below cursor when scrolling
set sidescrolloff=15            " Keep 15 columns to the left/right of cursor when scrolling
set ttyfast                     " Faster redrawing
set visualbell                  " Don't beep
set whichwrap=b,s,<,>,[,]       " Allow moving to next line with theses keys
set wrap                        " Wrap long lines
" set nowrapscan                  " Don't wrap around end of file when searching  

" " Folding settings
" set foldmethod=indent           " Fold based on indent level
" set foldnestmax=10              " Deepest fold is 10 levels
" set nofoldenable                " Don't fold by default
" set foldlevel=1                 " This is just what I like
" set foldcolumn=2                " Show 2 columns for folding
    
" Command line settings
set showfulltag                 " Show tag in command line after jumping to tag 
set showmode                    " Show current mode in command line
set showcmd                     " Show command in bottom bar
set wildmenu                    " Show command line completion menu
set wildmode=longest,list,full  " Command line completion mode
set wildignore=*.o,*.obj,*~     " Ignore compiled files
set wildignore+=*vim/backups*   " Ignore backup files
