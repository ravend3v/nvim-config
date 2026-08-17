vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Cleaner UI styling
vim.opt.showmode = false      -- hide -- INSERT -- since lualine shows the mode
vim.opt.laststatus = 3        -- global status bar across splits
vim.opt.cursorline = true     -- highlight current line
vim.opt.splitbelow = true     -- horizontal splits open below
vim.opt.splitright = true     -- vertical splits open to the right
vim.opt.scrolloff = 8         -- keep 8 lines above/below cursor when scrolling
vim.opt.sidescrolloff = 8

-- Sync Neovim yank/paste directly with system clipboard
vim.opt.clipboard = "unnamedplus"
