vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<A-S-f>", "gg=G``")
vim.keymap.set("n", "<A-q>", "<cmd>q<cr>")
vim.keymap.set("n", "<A-S-q>", "<cmd>q!<cr>")
vim.keymap.set("n", "<C-A-q>", "<cmd>qa<cr>")
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>")
vim.keymap.set("t", "<C-\\>", "<C-\\><C-n>")


--Move inside split screens
-- Move bettwen splits
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Mover entire split
vim.keymap.set("n", "<A-h>", "<C-w>H")
vim.keymap.set("n", "<A-j>", "<C-w>J")
vim.keymap.set("n", "<A-k>", "<C-w>K")
vim.keymap.set("n", "<A-l>", "<C-w>L")


-- Buffers Keymaps
vim.keymap.set("n", "<A-,>", "<cmd>BufferPrevious<cr>")
vim.keymap.set("n", "<A-.>", "<cmd>BufferNext<cr>")
vim.keymap.set("n", "<A-w>", "<cmd>BufferClose<cr>")
vim.keymap.set("n", "<A-S-w>", "<cmd>BufferRestore<cr>")
vim.keymap.set("n", "<leader>cab", "<cmd>BufferCloseAllButCurrent<cr>")

vim.keymap.set("n", "<A-1>", "<cmd>BufferGoto 1<cr>")
vim.keymap.set("n", "<A-2>", "<cmd>BufferGoto 2<cr>")
vim.keymap.set("n", "<A-3>", "<cmd>BufferGoto 3<cr>")
vim.keymap.set("n", "<A-4>", "<cmd>BufferGoto 4<cr>")
vim.keymap.set("n", "<A-5>", "<cmd>BufferGoto 5<cr>")
vim.keymap.set("n", "<A-6>", "<cmd>BufferGoto 6<cr>")
vim.keymap.set("n", "<A-7>", "<cmd>BufferGoto 7<cr>")
vim.keymap.set("n", "<A-8>", "<cmd>BufferGoto 8<cr>")
vim.keymap.set("n", "<A-9>", "<cmd>BufferGoto 9<cr>")

-- Neotree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree left toggle<cr>")
