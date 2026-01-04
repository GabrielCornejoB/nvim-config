-- line numbers
vim.wo.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 3

-- word wrap
vim.o.wrap = false
vim.o.linebreak = true

-- search
vim.o.ignorecase = true
vim.o.smartcase = true

-- clipboard
vim.o.clipboard = 'unnamedplus'

-- tabs / indentations
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.showtabline = 1
vim.o.autoindent = true
vim.o.backspace = 'indent,eol,start'

-- scroll
vim.o.scrolloff = 7

--
--vim.o.showmode = true

vim.o.fileencoding = 'utf-8'


local function smart_enter()
  local line = vim.api.nvim_get_current_line()
  local col = vim.api.nvim_win_get_cursor(0)[2]

  -- text before cursor
  local before = line:sub(1, col)

  -- match indentation + comment leader ONLY
  local comment_only = before:match("^%s*//%s*$")
                      or before:match("^%s*%-%-%s*$")

  if comment_only then
    -- delete the comment leader and create empty line
    return "<Esc>0d$i"
  end

  -- normal Enter (keeps comment continuation)
  return "<CR>"
end

vim.keymap.set("i", "<CR>", smart_enter, { expr = true })

