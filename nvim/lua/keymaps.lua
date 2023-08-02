-- Keymap settings

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- out insert mode
keymap("i", "jj", "<ESC>", opts)
keymap("i", "<C-j>", "j", opts)
keymap("i", "kk", "<ESC>", opts)
keymap("i", "<C-k>", "k", opts)

-- move a window
-- keymap("n", "<C-w>", "<C-w>w", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-h>", "<C-w>h", opts)

-- adjust a window size
-- keymap("n", ">", "<C-w>>", opts)
-- keymap("n", "<", "<C-w><", opts)


-- indent
keymap("n", "<Tab>", ">>", opts)
keymap("n", "<S-Tab>", "<<", opts)
keymap("v", "<Tab>", ">>", opts)
keymap("v", "<S-Tab>", "<<", opts)

-- jump command
keymap("n", "<C-i>", "<C-I>", opts)
keymap("n", "<C-o>", "<C-O>", opts)

-- move to next word
keymap("n", "<S-b>", "w", opts)

-- select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- save command
keymap("n", "<Space><Space>", ":w<CR>", opts)
keymap("n", "<Space><Space><Enter>", ":wq<CR>", opts)

-- incremant, decremant
keymap("n", "<S-Up>", "<C-a>", opts)
keymap("n", "<S-Down>", "<C-x>", opts)

-- tab
keymap("n", "<C-[>", "gT", opts)
keymap("n", "<C-]>", "gt", opts)
