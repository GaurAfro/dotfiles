"----------------------------------------
" Initialization for vim-plug
call plug#begin('~/.config/nvim/plugged')
"----------------------------------------


"----------------------------------------
" Plugin list
Plug 'akinsho/org-bullets.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-orgmode/orgmode'     " Orgmode for vim
Plug 'github/copilot.vim'       " Github copilot
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " fuzzy finder
Plug 'junegunn/fzf.vim'        " fzf for vim
Plug 'tpope/vim-commentary'    " commenting text
Plug 'tpope/vim-fugitive'      " git wrapper
Plug 'tpope/vim-surround'      " Surround text with something
Plug 'tpope/vim-repeat'        " Allow repeating of custom commands like surround
Plug 'tpope/vim-abolish'       " Smart replace, abbreviations, convert case
Plug 'christoomey/vim-tmux-navigator'

" End of vim-plug initialization
call plug#end()
"----------------------------------------


"----------------------------------------
" lua part
lua << EOF

-- init.lua

require('org-bullets').setup()
-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Treesitter configuration
require('nvim-treesitter.configs').setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop,
  -- highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

require('orgmode').setup({
  org_agenda_files = {'~/org-files/*', '~/org-files/agenda/**/*'},
  org_default_notes_file = '~/org-files/refile.org',
})

EOF

