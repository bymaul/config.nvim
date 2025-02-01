local keymap = vim.keymap

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)

-- Telescope
keymap.set("n", "<leader>sf", require('telescope.builtin').find_files)
keymap.set("n", "<leader>sh", require('telescope.builtin').help_tags)
keymap.set("n", "<leader>sn", function()
    require('telescope.builtin').find_files {
        cwd = vim.fn.stdpath("config")
    }
end
)

keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" } )
