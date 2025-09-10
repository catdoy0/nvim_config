return {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
    opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
        html = {},
        cssls = {},
        tsserver = {},
        svelte = {},
    })
    end,
}
