local opt = vim.opt

-- Line numbers & scrolling
opt.number = true
opt.relativenumber = true
opt.scrolloff = 10

-- UI settings
opt.cursorline = true
opt.wrap = false
opt.showmode = false
opt.mouse = 'a'

-- Searching
opt.ignorecase = true
opt.smartcase = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Persistent undo
opt.undofile = true

-- List characters
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Clipboard
vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)

-- Terminal
opt.termguicolors = true

-- Shell selection
opt.shell = vim.loop.os_uname().sysname:find 'Windows' and 'pwsh' or 'zsh'
