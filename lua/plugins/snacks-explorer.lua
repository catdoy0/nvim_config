return {
    "folke/snacks.nvim",
    opts = { picker = { source = { explorer =  { files = {
            hidden = true,
                  },
                },
              },
            },
          },
    keys = {
        {
            "<leader>e",
            function()
            require("snacks").explorer({ cwd = require("lazyvim.util").root() })
            end,
            desc = "Explorer Snacks (root dir)",
        },
        {
            "<leader>E",
            function()
            require("snacks").explorer()
            end,
            desc = "Explorer Snacks (cwd)",
        },
    },
}
