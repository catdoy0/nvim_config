return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        filesystem = {
            filtered_items = {
                visible = true,          -- show filtered items in the UI
                hide_dotfiles = false,   -- don't hide dotfiles like `.git`, `.env`, etc.
                hide_gitignored = false,-- don't hide files ignored by .gitignore
            },
        },
    },
    keys = {
        {
            "<leader>fe",
            "<cmd>Neotree toggle<cr>",
            desc = "Toggle NeoTree",
        },
    },
}
