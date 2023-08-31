local lsp = require('lsp-zero')

--lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
	'sumneko_lua',
	'pyright',
})

lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<leader>('] = cmp.mapping.select_prev_item(cmp_select),
	['<leader>)'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({select = true}),
	['<C-Space>'] = cmp.mapping.complete(),

})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})


lsp.on_attach(function(client, bufnr)
	print("attached")
	local opts = { buffer = bufnr, noremap = true }
  local bind = vim.keymap.set

	bind("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
	bind("n", "<leader>gD", function() im.lsp.buf.declaration() end, opts)
	bind("n", "K", function() vim.lsp.buf.hover() end, opts)
	bind("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	bind("n", "<leader>vd", function() vim.lsp.buf.open_float() end, opts)
	bind("n", "[d", function() vim.lsp.buf.goto_next() end, opts)
	bind("n", "]d", function() vim.lsp.buf.goto_prev() end, opts)
	bind("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
	bind("n", "<leader>fr", function() vim.lsp.buf.references() end, opts)
	bind("n", "<leader>vn", function() vim.lsp.buf.rename() end, opts)
	bind("i", "<C-H>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
