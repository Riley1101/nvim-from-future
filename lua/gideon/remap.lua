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

-- Copilot remap 
vim.api.nvim_set_keymap('i', '<leader>/', 'copilot#Accept("<CR>")', {expr=true, silent=true})

-- Prettier remap
vim.keymap.set("n", "<leader>fm", "<cmd>LspZeroFormat<cr>")
vim.keymap.set("n","<leader>fn", "<cmd>Neoformat<cr>")

-- Remap escape 
vim.keymap.set("i", "jk", "<ESC>")

-- remap terminal 
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("n", "<leader>t", "<cmd>terminal<cr>")


-- debugger remap
--
local dap_ok, dap = pcall(require, "dap")
local dap_ui_ok, ui = pcall(require, "dapui")
 
if not (dap_ok and dap_ui_ok) then
  return
end
 
vim.fn.sign_define('DapBreakpoint', { text = '>' })
 
-- Start debugging session
vim.keymap.set("n", "<leader>ds", function()
  dap.continue()
  ui.toggle({})
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-w>=", false, true, true), "n", false) -- Spaces buffers evenly
end)
 
-- Set breakpoints, get variable values, step into/out of functions, etc.
vim.keymap.set("n", "<leader>dl", require("dap.ui.widgets").hover)
vim.keymap.set("n", "<leader>dc", dap.continue)
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>dn", dap.step_over)
vim.keymap.set("n", "<leader>di", dap.step_into)
vim.keymap.set("n", "<leader>do", dap.step_out)
vim.keymap.set("n", "<leader>dC", function()
  dap.clear_breakpoints()
end)
 
-- Close debugger and clear breakpoints
vim.keymap.set("n", "<leader>de", function()
  dap.clear_breakpoints()
  ui.toggle({})
  dap.terminate()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-w>=", false, true, true), "n", false)
end)

-- Neovim Comment

