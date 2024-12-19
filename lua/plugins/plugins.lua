return {

	--lsp stuff
	--
	{
	  "j-hui/fidget.nvim",
	  config = {
	  function()
	  require("fidget.nvim").setup{}
	  end
	}
	},
	{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
	},
	{
	  "williamboman/mason.nvim",
	  lazy = false,
	  dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
	  },
	  config = function()
	  vim.lsp.inlay_hint.enable(true, { 0 })

	  local capabilities = require('cmp_nvim_lsp').default_capabilities()
	  require("mason").setup()
		require("mason-lspconfig").setup()
	    require("mason-lspconfig").setup_handlers {
          -- The first entry (without a key) will be the default handler
          -- and will be called for each installed server that doesn't have
          -- a dedicated handler.
          function (server_name) -- default handler (optional)
              require("lspconfig")[server_name].setup {
			  capabilities = capabilities,
		  }
          end,
          -- Next, you can provide a dedicated handler for specific servers.
          -- For example, a handler override for the `rust_analyzer`:
      }
	 end
  },
}
