-- Setup custom keymappings for VIM

-- Go back to explorer
vim.keymap.set("n", " ", "<Nop>", {silent = true, remap = false })
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Hide highlighting
vim.keymap.set("n", "<leader>h", vim.cmd.noh)

-- exit terminal view
vim.api.nvim_set_keymap('t', '<leader>pm', [[<C-\><C-n>]], { noremap = true, silent = true })
