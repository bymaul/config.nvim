return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  opts = {
    notify_on_error = false,
    format_on_save = function()
      return {
        timeout_ms = 500,
        lsp_format = 'fallback',
      }
    end,
  },
  formatters_by_ft = {
    javascript = { 'prettierd' },
    typescript = { 'prettierd' },
    javascriptreact = { 'prettierd' },
    typescriptreact = { 'prettierd' },
    css = { 'prettierd' },
    html = { 'prettierd' },
    json = { 'prettierd' },
    yaml = { 'prettierd' },
    markdown = { 'prettierd' },
    lua = { 'stylua' },
    php = { 'pint', 'php_cs_fixer' },
  },
}
