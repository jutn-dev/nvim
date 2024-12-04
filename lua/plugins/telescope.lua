return {
	{
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  config = function()
		require('telescope').setup{
		  extensions = {
			file_browser = {
			  --theme = "ivy",
			  -- disables netrw and use telescope-file-browser in its place
			  cwd_to_path = true,
			  depth = 1,
			  hijack_netrw = true,
			  hidden = true,
    		  mappings = {
		       ["i"] = {
				-- your custom insert mode mappings
				},
				["n"] = {
				-- your custom normal mode mappings
				},
			  },
			},
		  }
		}
	  require("telescope").load_extension "file_browser"


	  vim.keymap.set('n', '<space>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
	  vim.keymap.set('n', '<space><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
	  vim.keymap.set('n', '<space>/', require('telescope.builtin').current_buffer_fuzzy_find, {desc = '[/] Fuzzily search in current buffer]'})
	  
	  vim.keymap.set('n', '<space>ff', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
	  vim.keymap.set('n', '<spaceh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
	  vim.keymap.set('n', '<space>w', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
	  vim.keymap.set('n', '<space>lg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
	  vim.keymap.set('n', '<space>m', require('telescope.builtin').man_pages)
	  
	  vim.keymap.set('n', '<space>gs', require('telescope.builtin').git_status)
	  vim.keymap.set('n', '<space>gb', require('telescope.builtin').git_branches)
	  vim.keymap.set('n', '<space>ggg', require('telescope.builtin').git_commits)
	  
	  vim.keymap.set('n', '<space>d', require('telescope.builtin').lsp_definitions)
	  vim.keymap.set('n', '<space>r', require('telescope.builtin').lsp_references)

vim.keymap.set("n", "<space>fb", function()
	require("telescope").extensions.file_browser.file_browser()
end)

	end,
	  dependencies = { 
		'nvim-lua/plenary.nvim',
		"nvim-tree/nvim-web-devicons",
	},
  },

  {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  
}
