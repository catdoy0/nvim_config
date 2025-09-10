return{
  "norcalli/nvim-colorizer.lua",

  config = function()
    require 'colorizer'.setup {
    'css';
    'javascript';
    svelte = {
      mode = 'foreground';
    };
    html = {
      mode = 'foreground';
    }
  }
  end,
  --
  -- "github/copilot.vim",
  -- copilot_config = function()
  --   vim.g.copilot_enabled = false
  -- end,

}
