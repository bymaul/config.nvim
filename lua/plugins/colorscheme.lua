return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            transparent = true,
            italic_comments = true,
        })

        vim.cmd("colorscheme tokyonight")
    end,
}
