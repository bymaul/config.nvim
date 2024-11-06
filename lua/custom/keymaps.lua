local map = vim.keymap.set

-- Custom keymaps
map('i', 'jj', '<Esc>')
map('n', '<leader>eq', ':q!<CR>', { desc = '[Q]uit' })
map('n', '<leader>ef', vim.cmd.Ex, { desc = 'Open Netrw [F]ile explorer' })
map('n', '<S-h>', ':bnext<CR>', { desc = 'Next buffer' })
map('n', '<S-l>', ':bprevious<CR>', { desc = 'Previous buffer' })
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })
