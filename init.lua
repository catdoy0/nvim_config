-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.mouse= ""
vim.opt.conceallevel = 0

-- Remove the conflicting visual mode mapping
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
    -- This will override Flash's mapping
    vim.keymap.set("v", "S", "<Plug>(nvim-surround-visual)", { noremap = false })
    end,
})

require('flutter-tools').setup({
  lsp = {
    color = {
      enabled = true,
      background = false,
      foreground = false,
      virtual_text = true,
      virtual_text_str = "■",
    	},
      },
    })

-- vim.api.nvim_create_user_command('SetJavaRoot', function(opts)
--   local jdtls = require('jdtls')
--
--   -- Use argument if provided, otherwise current working directory
--   local root_dir = opts.args ~= "" and vim.fn.expand(opts.args) or vim.fn.getcwd()
--
--   -- Resolve relative paths like ../..
--   root_dir = vim.fn.fnamemodify(root_dir, ":p")  -- absolute path
--
--   local project_name = vim.fn.fnamemodify(root_dir, ':p:h:t')
--   local workspace_dir = vim.fn.stdpath('data') .. '/jdtls-workspace/' .. project_name
--
--   jdtls.start_or_attach({
--     cmd = { "jdtls", "-data", workspace_dir },
--     root_dir = root_dir,
--   })
-- end, { nargs = "?" })  -- zero or one argument

-- require("nvim-treesitter.configs").setup {
--   ensure_installed = {
--     "bash",
--     "c",
--     "c_sharp",
--     "css",
--     "diff",
--     "fish",
--     "html",
--     "java",
--     "javascript",
--     "jsdoc",
--     "json",
--     "jsonc",
--     "lua",
--     "luadoc",
--     "luap",
--     "markdown",
--     "markdown_inline",
--     "ninja",
--     "printf",
--     "python",
--     "query",
--     "regex",
--     "rst",
--     "sql",
--     "svelte",
--     "toml",
--     "tsx",
--     "typescript",
--     "vim",
--     "vimdoc",
--     "xml",
--     "yaml",
--   },
-- modules = {},
-- sync_install = false,
--
--   -- Automatically install missing parsers when entering buffer
--   auto_install = true,
--
--   -- List of parsers to ignore installing
--   ignore_install = {},
--
--   highlight = {
--     enable = true,
--     additional_vim_regex_highlighting = false,
--   },
-- }
