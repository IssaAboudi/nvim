require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "cpp", "gitcommit", "gitignore", "python", "lua", "yaml", "javascript", "c", "lua", "rust", "tsx" },

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
    
}
