vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<A-S-f>", "gg=G``")
vim.keymap.set("n", "<A-q>", "<cmd>q<cr>")
vim.keymap.set("n", "<A-S-q>", "<cmd>q!<cr>")
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>")

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
