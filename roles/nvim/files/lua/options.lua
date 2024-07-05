-- INDENTATION --
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.shiftwidth = 2 -- indent size
vim.opt.tabstop = 2 -- how many spaces is a tab
vim.opt.softtabstop = 2 -- the same i guess

-- CLIPBOARD --
vim.opt.clipboard = "unnamedplus" -- share system clipboard with nvim

-- FILE EXPLORER --
-- disable netrw
vim.g.loaded_netrw = 1 
vim.g.loaded_netrwPlugin = 1

-- COLORS --
vim.opt.termguicolors = true -- enable 24-bit color support

-- LINE NUMBERS
vim.opt.number = true -- show line numbers
vim.opt.relativenumber = true -- show relative line numbers
