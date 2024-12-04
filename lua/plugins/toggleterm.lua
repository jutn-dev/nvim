return {
  {
	'akinsho/toggleterm.nvim',
	version = "*",
	opts = {
	},
	config = function()
	  require("toggleterm").setup({
		size = 20,
	  })
	  local opts = { noremap = true, silent = true }
	  vim.api.nvim_set_keymap("t", "<C-ö>", "<C-\\><C-N>", opts)
	  vim.keymap.set({"n","i","t"}, "<C-1>", "<cmd>:1ToggleTerm<cr>", opts)
	  vim.keymap.set({"n","i","t"}, "<C-2>", "<cmd>2ToggleTerm<cr>", opts)
	  vim.keymap.set({"n","i","t"}, "<C-3>", "<cmd>3ToggleTerm<cr>", opts)
	  vim.keymap.set({"n","i","t"}, "<C-4>", "<cmd>4ToggleTerm<cr>", opts)
	  vim.keymap.set({"n","i","t"}, "<C-5>", "<cmd>5ToggleTerm<cr>", opts)
	  vim.keymap.set({"n","i","t"}, "<C-T>", "<cmd>ToggleTermToggleAll<cr>", opts)
	end
  },
}
