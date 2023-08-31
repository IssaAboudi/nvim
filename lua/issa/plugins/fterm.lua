-- Setup VIM commands for FTERM
vim.api.nvim_create_user_command('FTermOpen', require('FTerm').open, { bang = true })

vim.api.nvim_create_user_command('FTermClose', require('FTerm').close, { bang = true })

vim.api.nvim_create_user_command('FTermExit', require('FTerm').exit, { bang = true })

-- Setup keybinding for toggling the terminal
vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
