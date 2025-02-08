return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = 'j;',
          accept_word = 'jw',
          accept_line = 'jl',
          next = 'jn',
          prev = 'jp',
          dismiss = 'jd',
        },
      },
      filetypes = {
        yaml = true,
        markdown = true,
        help = true,
        gitcommit = true,
        ['.'] = false,
      },
      copilot_node_command = 'node',
    }
  end,
}
