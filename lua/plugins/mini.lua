return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require('mini.comment').setup()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()
    require('mini.pairs').setup()

    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = true }
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
