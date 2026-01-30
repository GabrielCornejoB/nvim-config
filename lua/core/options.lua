-- line numbers
vim.wo.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 2
vim.o.signcolumn = 'yes'

-- word wrap
vim.o.wrap = false
vim.o.linebreak = true

-- search
vim.o.ignorecase = true
vim.o.hlsearch = true
vim.o.smartcase = true

-- clipboard
vim.o.clipboard = ''

-- tabs / indentations
vim.o.shiftwidth = 4
vim.o.shiftround = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.showtabline = 1
vim.o.autoindent = true
vim.o.backspace = 'indent,eol,start'

-- netrw file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- scroll
vim.o.scrolloff = 8

-- disable default mode indicator
vim.o.showmode = false

-- general
vim.o.fileencoding = 'utf-8'
vim.opt.termguicolors = true
vim.opt.backup = false -- disable backup file explorer
vim.opt.splitbelow = true -- open horizontal splits below current window
vim.opt.splitright = true -- open vertical splits right of current window
vim.opt.cursorline = true
