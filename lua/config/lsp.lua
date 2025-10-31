vim.lsp.config['arduino-language-server'] = {
  -- Command and arguments to start the server.
	cmd = { '/usr/bin/arduino-language-server',
		'-cli','arduino-cli',
		'-clangd','clangd',
		'-fqbn','arduino:avr',	
	},
  -- Filetypes to automatically attach to.
  	filetypes = { 'arduino'},

		capabilities = {
            textDocument = {
              semanticTokens = vim.NIL,
            },
            workspace = {
              semanticTokens = vim.NIL,
            },
          },

	root_dir = function(_bufnr, on_dir)
    	on_dir(vim.fn.expand "%:p:h")
        end,

}

vim.lsp.config["clangd"] = {

	filetypes = {"cpp", "c", "arduino"}
}

vim.lsp.enable("arduino-language-server")
vim.lsp.enable("clangd")
