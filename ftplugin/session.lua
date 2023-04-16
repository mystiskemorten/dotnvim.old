vim.keymap.set(
  "n",
  "<leader>ss",
  "<cmd>call personal#session#save()<cr>",
  { buffer = true, desc = '[S]ave session' }
)
