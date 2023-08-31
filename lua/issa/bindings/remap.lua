-- Setup custom keymappings for VIM

-- Go back to explorer
vim.keymap.set("n", " ", "<Nop>", {silent = true, remap = false })
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Hide highlighting
vim.keymap.set("n", "<leader>h", vim.cmd.noh)
--
--vim.api.nvim_set_keymap('n', '<leader>f', ':Format<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<leader>F', ':FormatWrite<CR>', { noremap = true, silent = true })
