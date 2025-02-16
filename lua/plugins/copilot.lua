return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = 'jl',
          next = 'jk',
          prev = 'jh',
          dismiss = 'j;',
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
