-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- \ + c d
vim.keymap.set("n", "\\cd", function()
vim.cmd("cd %:p:h")
print("Changed directory to " .. vim.fn.expand("%:p:h"))
end, { desc = "CD to current file directory" })

-- \ + u
vim.keymap.set("n", "\\\\", function()
local current_dir = vim.fn.getcwd()
local parent_dir = vim.fn.fnamemodify(current_dir, ":h") -- get parent directory
vim.cmd("cd " .. parent_dir)
print("Changed directory to " .. parent_dir)
end, { desc = "CD to parent directory" })



-- Alt + 1 to Alt + 9 to switch to buffer 1~9
for i = 1, 9 do
  vim.keymap.set("n", "<A-" .. i .. ">", function()
    require("bufferline").go_to(i, true)
  end, { desc = "Go to buffer " .. i })
end

--[[
-- Find directories only
vim.keymap.set("n", "<leader>fd", function()
require("telescope.builtin").find_files({
  prompt_title = "Find Directories",
  find_command = { "fd", "--type", "d", "--hidden", "--exclude", ".git" },
})
end, { desc = "Find directories" })]]

local dap = require('dap')
local dapui = require('dapui')
vim.keymap.set('n', '<F10>', dap.step_over, { desc = "DAP Step Over" })
vim.keymap.set('n', '<F11>', dap.step_into, { desc = "DAP Step Into" })
vim.keymap.set('n', '<F12>', dap.step_out, { desc = "DAP Step Out" })
