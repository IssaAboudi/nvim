-- Setup global settings for VIM overall


local diagnostic = require('vim.diagnostic')
-- Disable virtual_text and replace it with hover window
vim.diagnostic.config({virtual_text = false})
-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'vim.diagnostic'.open_float(nil, {focus=false})]]

vim.wo.number = true

-- Set Tabs and Shiftwidth to 4
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = true
-- Set indentexpr to automatically indent correctly
vim.cmd("set indentexpr=nvim_treesitter#indent()")
-- Disable smartindent, autoindent, and cindent
vim.o.smartindent = false
vim.o.autoindent = false
vim.o.cindent = false

