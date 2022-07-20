local keymap = vim.keymap.set
local options = { silent = true }

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "

-- Modes
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- terminal_mode = "t"
-- command_mode = "c"

-- Telescope
keymap("n", "<c-p>", ":Telescope find_files<CR>", options)