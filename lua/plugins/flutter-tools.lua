return {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true
  -- changes = function ()
  --   Lsp = {
  --     colors = {
  --       enabled = true,
  --       background = true
  --     }
  --   }
  -- end
}
