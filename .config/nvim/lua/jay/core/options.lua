vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- line numbers: hybrid
opt.relativenumber = true
opt.number = true

-- text styling
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

-- backspace & clipboard
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- no swapfile
opt.swapfile = false
