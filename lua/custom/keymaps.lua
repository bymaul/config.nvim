local map = vim.keymap.set

-- Custom keymaps
map('n', '<leader>q', ':q!<CR>', { desc = 'Quit' })
map('n', '<leader>ef', vim.cmd.Ex, { desc = 'Open Netrw [F]ile explorer' })
map('n', '<S-h>', ':bnext<CR>', { desc = 'Next buffer' })
map('n', '<S-l>', ':bprevious<CR>', { desc = 'Previous buffer' })
map('i', 'jj', '<Esc>')
