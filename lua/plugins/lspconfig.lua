return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls" }
            }
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "saghen/blink.cmp",
            {
                "folke/lazydev.nvim",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            local lspconfig = require("lspconfig")

            local on_attach = function(client, bufnr)
                -- Keymaps
                local opts = { noremap = true, silent = true, buffer = bufnr }

                -- Goto definition
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

                -- Goto declaration
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)

                -- Show documentation
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

                -- Goto implementation
                vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)

                -- List references
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

                -- Rename symbol
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

                -- Code actions
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

                -- Auto Format
                vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, opts)

                -- Diagnostics
                vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
                vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
                vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
            end

            require("mason-lspconfig").setup_handlers {
                function(server_name)
                    lspconfig[server_name].setup {
                        capabilities = capabilities,
                        on_attach = on_attach,
                    }
                end,
                -- You can also specify custom setup for specific servers if needed
                -- ["lua_ls"] = function()
                --     lspconfig.lua_ls.setup {
                --         capabilities = capabilities,
                --         on_attach = on_attach,
                --         settings = {
                --             Lua = {
                --                 diagnostics = {
                --                     globals = { "vim" }
                --                 }
                --             }
                --         }
                --     }
                -- end,
            }
        end,
    }
}
