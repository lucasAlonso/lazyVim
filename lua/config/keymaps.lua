-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local date = require("custom.date")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--trouble quickfix
vim.keymap.set("n", "<leader>xq", function()
  require("trouble").toggle("quickfix")
end)
--Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
--
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
