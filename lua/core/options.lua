local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = 'a'
opt.showmode = false
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.wrap = false
opt.scrolloff = 10

opt.clipboard = 'unnamedplus'

opt.splitright = true
opt.splitbelow = true

opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- shell
opt.shell = 'zsh'

if vim.fn.has 'win32' == 1 or vim.fn.has 'win64' == 1 then
  opt.shell = 'pwsh'
end
