-- leader key mapping
vim.g.mapleader = " ";

-- call your Ex 
vim.keymap.set("n","<leader>pv",vim.cmd.Ex);

-- move up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep J in place
vim.keymap.set("n", "J", "mzJ`z")

-- half page movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- continuous page without losing buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yunk to global clipboard 
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
-- Remap escape 
vim.keymap.set("i", "jk", "<ESC>")

-- remap terminal 
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("n", "<leader>T", "<cmd>terminal<cr>")
vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set("t", "<ESC>", '<CMD>lua require("FTerm").toggle()<CR>')
