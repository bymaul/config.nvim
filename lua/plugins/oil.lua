return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'echasnovski/mini.icons', opts = {} },
  config = function()
    require('oil').setup {
      default_file_explorer = true,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
    }
  end,
}
