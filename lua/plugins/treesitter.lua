return {
	{
    	"nvim-treesitter/nvim-treesitter",
	    build = ":TSUpdate",
		lazy = false,
	    config = function()
	        local ensure_installed = { "rust", "toml", "c", "lua", "vim", "vimdoc", "query", "javascript", "html" }
			require("nvim-treesitter").install(ensure_installed):wait(300000)
			vim.api.nvim_create_autocmd('FileType', {
			pattern = {"*"},
	  		callback = function(args)
					local lang = vim.treesitter.language.get_lang(args.match)
					-- Check if treesitter language exists
					if vim.treesitter.query.get(lang, "highlights") then
						vim.treesitter.start()
					end
				end,
			})
		end,
	},
	"nvim-treesitter/nvim-treesitter-context"
}
