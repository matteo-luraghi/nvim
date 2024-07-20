-- tab size
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- space as leader
vim.g.mapleader = " "

-- no line wrapping
vim.opt.wrap = false

-- set incremental search
vim.opt.incsearch = true

-- automatically scroll to keep at least 8 lines below and over
vim.opt.scrolloff = 8

-- global key bindings
vim.keymap.set("n", "<C-x>", ":qa<CR>", {})    -- exit
vim.keymap.set("n", "<C-s>", ":w<CR>", {})     -- save
vim.keymap.set("n", "<C-S-X>", ":wqa<CR>", {}) -- save and exit
