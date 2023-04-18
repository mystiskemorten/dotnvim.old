-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.api.nvim_set_keymap("n", "<leader>pv", ":NvimTreeToggle<cr>", { silent = true, noremap = true })

-- Move current line up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Trim space
vim.keymap.set("n", "J", "mzJ`z")

-- Jump p/down in file by 10 lines
vim.keymap.set("n", "<C-d>", "10jzz")
vim.keymap.set("n", "<C-u>", "10kzz")

-- Yank from position to end of line
vim.keymap.set("n", "Y", "yg$")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Quickfix navigation
vim.keymap.set("n", "<leader>k", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>cprev<CR>zz")

-- Replace text
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>]])
vim.keymap.set("v", "<leader>rc", [["hy:%s/<C-r>h//gc<Left><Left><Left>]])
vim.keymap.set("v", "<leader>ri", [["hy:%s/<C-r>h//gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>rq", [[:cdo s/foo/bar/g]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Window width is increased/decreased with 10 by default
vim.keymap.set("n", "<C-W>>", "<C-W>10>")
vim.keymap.set("n", "<C-W><", "<C-W>10<")

vim.keymap.set(
  "n",
  "<leader>ss",
  "<cmd>call personal#session#save()<cr>",
  { buffer = true, desc = '[S]ave session' }
)

-- Move to start of line/end of line
vim.keymap.set({ "n", "v" }, "H", "^")
vim.keymap.set({ "n", "v" }, "L", "$")

