vim.pack.add({
	"https://github.com/j-hui/fidget.nvim",
	"https://github.com/williamboman/mason.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/williamboman/mason-lspconfig.nvim",
	'https://github.com/windwp/nvim-autopairs',
})
require("fidget").setup{}
require("nvim-autopairs").setup {}

vim.lsp.inlay_hint.enable(true, { 0 })
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("mason").setup()
require("mason-lspconfig").setup {
	automatic_enable = true
          -- Next, you can provide a dedicated handler for specific servers.
          -- For example, a handler override for the `rust_analyzer`:
}

vim.lsp.config("rust_analyzer", {
	filetypes = {"rust"}
})

    vim.lsp.config("arduino_language_server", {
        capabilities = {
            textDocument = {
                semanticTokens = vim.NIL,
            },
            workspace = {
                semanticTokens = vim.NIL,
            },
        },

        cmd = {
            "arduino-language-server",
            "-cli",
            "/usr/bin/arduino-cli",        '-cli-config' , vim.fn.expand('~/.arduino15/arduino-cli.yaml'),
            "-clangd",
            "clangd",
            "-fqbn",
			"arduino:avr:uno",
        },

        filetypes = { "arduino" },

        root_dir = function(bufnr, on_dir)
            on_dir(vim.fn.expand "%:p:h")
        end,
    })

vim.lsp.config["clangd"] = {

	filetypes = {"cpp", "c",} 
}

vim.lsp.enable("arduino-language-server")
vim.lsp.enable("clangd")
vim.lsp.enable("rust_analyzer")
