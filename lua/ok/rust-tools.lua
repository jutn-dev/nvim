--local rt = require("rust-tools")
--  local codelldb_path = "/home/juho/.local/share/nvim/mason/bin/codelldb"
--  local liblldb_path = "/usr/lib/liblldb.so"
--    
--rt.setup({
--  server = {
--    on_attach = function(_, bufnr)
--      -- Hover actions
--      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
--      -- Code action groups
--      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
--    end,
--  },
--  dap = {
--      adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
--    },
--})






vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {
  },
  -- LSP configuration
  server = {
    on_attach = function(client, bufnr)
	  -- you can also put keymaps in here
    end,
    default_settings = {
      -- rust-analyzer language server configuration
      ['rust-analyzer'] = {
      },
    },
  },
  -- DAP configuration
  dap = {
  },
}
