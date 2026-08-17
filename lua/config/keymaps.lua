local map = vim.keymap.set

-- Set leader key description / safety
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window Navigation (Ctrl + hjkl)
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window (sidebar)" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window (editor)" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })

-- Select all text in buffer
map({ "n", "i", "v" }, "<C-a>", "<Esc>ggVG", { desc = "Select all" })

-- Copy (Ctrl + c) in Visual mode to system clipboard
map("v", "<C-c>", '"+y', { desc = "Copy selection to clipboard" })

-- Cut (Ctrl + x) in Visual mode to system clipboard
map("v", "<C-x>", '"+d', { desc = "Cut selection to clipboard" })

-- Paste (Ctrl + v)
map("n", "<C-v>", '"+p', { desc = "Paste from clipboard (Normal mode)" })
map("v", "<C-v>", '"+p', { desc = "Paste from clipboard (Visual mode)" })
map("i", "<C-v>", '<C-r>+', { desc = "Paste from clipboard (Insert mode)" })
map("c", "<C-v>", '<C-r>+', { desc = "Paste from clipboard (Command mode)" })
