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






local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n", 
  "<leader>a", 
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr }
)



