require("chatgpt").setup({
    api_key_cmd = "security find-generic-password -a ChatGPT -s ChatGPT -w"
})

vim.keymap.set("n", "<C-g><C-g>", ":ChatGPT<CR>", {})
vim.keymap.set("n", "<C-g><C-a>", ":ChatGPTActAs<CR>", {})
vim.keymap.set("n", "<C-g><C-i>", ":ChatGPTEditWithInstructions<CR>", {})
vim.keymap.set("n", "<C-g><C-r>", ":ChatGPTRun ", {})

