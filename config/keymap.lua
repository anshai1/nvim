-- options
local noremap_silent = { noremap = true, silent = true }
local silent = { silent = true }

-- shrter function name
local keymap = vim.api.nvim_set_keymap

-- remap leader key
keymap("", "<Space>", "<Nop>", noremap_silent)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--  Modes:
--  normal_mode:  "n"
--  insert_mode:  "i"
--  visual_mode:  "v"
--  visual_block_mode:  "x"
--  term_mode: "t"
--  command_mode: "c"

--  Nvim-tree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", noremap_silent) -- toggle nvim-tree (file explorer)

-- ToggleTerm
keymap("n", "<C-t>", "<cmd>ToggleTerm size=40 dir=. direction=float<CR>", noremap_silent) -- togle ToggleTerm (terminal emulator inside vim)

-- Telescope
keymap("n", "<S-f>", "<cmd>Telescope find_files<CR>", noremap_silent) -- telescope find_files

-- Bufferline
keymap("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", noremap_silent) -- go to previous bufferline tab
keymap("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", noremap_silent) -- go to next bufferline tab
