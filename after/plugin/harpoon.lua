local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)

require("harpoon").setup({
  tabline = true,
  tabline_prefix = "▏"
})

-- vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
vim.cmd('highlight! HarpoonActive guibg=#d5c4a1 guifg=#32302f')
vim.cmd('highlight! HarpoonNumberActive guibg=#d5c4a1 guifg=#32302f')
-- vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
-- vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')
