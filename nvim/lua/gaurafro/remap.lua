-- Set the leader key to space
vim.g.mapleader = " "

-- Custom mappings
-- Open VimEx terminal
vim.keymap.set("n", "<leader>fo", vim.cmd.Ex)

-- Move selected lines in visual mode up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join the current line with the one below and position the cursor at the end
vim.keymap.set("n", "J", "mzJ`z")

-- Move the cursor down half a screen and reposition it in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Move the cursor up half a screen and reposition it in the middle of the screen
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- After searching with 'n', reposition the cursor to center the line of the match
vim.keymap.set("n", "n", "nzzzv")

-- After searching with 'N', reposition the cursor to center the line of the match
vim.keymap.set("n", "N", "Nzzzv")

-- Copy selected text to the system clipboard in normal and visual mode
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank to the system clipboard in normal and visual mode
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to the black hole register in normal and visual mode
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Use <C-c> to exit insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable the 'Q' key in normal mode
vim.keymap.set("n", "Q", "<nop>")

-- Open a new tmux window with tmux-sessionizer in normal mode
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Format the code using LSP (Language Server Protocol) in normal mode
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Move to the next quickfix item and reposition the cursor in the middle of the screen
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")

-- Move to the previous quickfix item and reposition the cursor in the middle of the screen
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Move to the next location list item and reposition the cursor in the middle of the screen
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")

-- Move to the previous location list item and reposition the cursor in the middle of the screen
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Perform a case-insensitive search and replace for the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable using chmod
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Open Packer's config file in the nvim directory
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")

-- Source the current file
vim.keymap.set("n", "<leader>sf", vim.cmd.so)

-- Save the current file
vim.keymap.set("n", "<leader>fs", vim.cmd.w)
-- Save the current file and quit
vim.keymap.set("n", "<leader>fq", vim.cmd.wq)
-- Quit Vim
vim.keymap.set("n", "<leader>qq", vim.cmd.q)
-- Quit Vim without saving


-- Call PackerSync (install and update plugins)
vim.keymap.set("n", "<leader>ps", vim.cmd.PackerSync)
