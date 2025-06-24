-- Keymap settings

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

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
keymap("n", ">", "<C-w>>", opts)
keymap("n", "<", "<C-w><", opts)


-- indent
keymap("n", "<Tab>", ">>", opts)
keymap("n", "<S-Tab>", "<<", opts)
keymap("v", "<Tab>", ">gv", opts)
keymap("v", "<S-Tab>", "<gv", opts)

-- move command
keymap("n", "j", "gj", opts)
keymap("v", "j", "gj", opts)
keymap("n", "k", "gk", opts)
keymap("v", "k", "gk", opts)

-- jump command
keymap("n", "<C-i>", "<C-I>", opts)
keymap("n", "<C-o>", "<C-O>", opts)

-- select all
keymap("n", "<C-S-a>", "gg<S-v>G", opts)

-- save command
keymap("n", "<leader>q", ":q<CR>:SessionSave<CR>", opts)
keymap("n", "<leader>w", ":w<CR>:SessionSave<CR>", opts)
keymap("n", "<leader><Enter>", ":wq<CR>:SessionSave<CR>", opts)

-- incremant, decremant
keymap("n", "<S-Up>", "<C-a>", opts)
keymap("n", "<S-Down>", "<C-x>", opts)

-- tab
keymap("n", "<C-[>", "gT", opts)
keymap("n", "<C-]>", "gt", opts)
keymap("n", "<C-w><C-w>", ":tabclose<CR>", opts)

-- disable <ESC>
keymap("n", "<ESC>", "", opts)

-- split window
keymap("n", "ss", ":split<Return><C-w>w", opts)
keymap("n", "sv", ":vsplit<Return><C-w>w", opts)
