local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.api.nvim_set_keymap("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = false })


keymap("i","<C-ö>","<Esc>",opts)
keymap("v","<C-ö>","<Esc>",opts)
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)



-- Resize windows with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<A-Down>", ":m .+1<CR>==", opts)
keymap("n", "<A-Up>", ":m .-2<CR>==", opts)

keymap("v", "<A-Up>", ":m .-2<CR>==", opts)
keymap("v", "<A-Down>", ":m .+1<CR>==", opts)

