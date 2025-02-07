local keymap = vim.keymap

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic Quickfix list' })
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

keymap.set('n', '-', '<cmd>Oil<CR>', { desc = 'Open parent directory' })
