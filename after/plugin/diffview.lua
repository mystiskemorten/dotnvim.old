vim.api.nvim_set_keymap("n", "<leader>gv", ":DiffviewOpen<cr>", { silent = true, noremap = true, desc = '[G]it diffview [o]pen'})
vim.api.nvim_set_keymap("n", "<leader>gq", ":DiffviewClose<cr>", { silent = true, noremap = true, desc = '[G]it diffview [q]uit'})
vim.api.nvim_set_keymap("n", "<leader>gl", ":DiffviewFileHistory<cr>", { silent = true, noremap = true, desc = '[G]it diffview file [h]istory'})
