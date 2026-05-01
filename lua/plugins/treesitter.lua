vim.pack.add({
    	"https://github.com/nvim-treesitter/nvim-treesitter",
		"https://github.com/nvim-treesitter/nvim-treesitter-context"
})

--	    build = ":TSUpdate",

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

vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		if ev.data.spec.name == "nvim-treesitter" then
			vim.cmd("TSUpdate")	
		end
	end,
})
