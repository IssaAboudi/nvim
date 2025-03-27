-- use system clipboard
vim.o.clipboard = "unnamedplus"

require("issa.packer")
require("issa.lsp")

-- Bindings / Custom Commands
require("issa.bindings.commands")
require("issa.bindings.remap")
require("issa.bindings.config")

-- Languages for LSP
require("issa.languages.haskell")

-- Plugins
require("issa.plugins.treesitter")
require("issa.plugins.harpoon")
require("issa.plugins.telescope")
require("issa.plugins.fterm")
