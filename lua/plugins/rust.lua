return {
  "rust-lang/rust.vim",
{
    'saecki/crates.nvim',
    tag = 'stable',
    config = function()
        require('crates').setup()
    end,
},
  {
	'mrcjkb/rustaceanvim',
	version = '^5', -- Recommended
	lazy = false,
	config = function ()
	  local capabilities = require('cmp_nvim_lsp').default_capabilities()
	  vim.g.rustaceanvim = {
		server = {
	      on_attach = function(client, bufnr)
		  -- you can also put keymaps in here
		  end,
		  default_settings = {
			-- rust-analyzer language server configuration
			['rust-analyzer'] = {

			  capabilities = capabilities,
			},
		},
	  },

	  }
	end-- This plugin is already lazy
  },
}
