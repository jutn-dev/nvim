return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function() 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "rust", "toml", "c", "lua", "vim", "vimdoc", "query", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end

  --{
--	"nvim-treesitter/nvim-treesitter",
--	build = ":TSUpdate",
 --   lazy = false,
--	config = {
--	  function()
--	  require("nvim-treesitter.config").setup {
--	    ensure_installed = {"rust"},
--		sync_install = false, 
--		ignore_install = { "" }, -- List of parsers to ignore installing-
--		highlight = {
--		  enable = true, -- false will disable the whole extension
--		  disable = { "" }, -- list of language that will be disabled
--	      additional_vim_regex_highlighting = true,

--		},
--		indent = { enable = true, disable = {  } },
--	  }
--	end
--	},
--  },
}
