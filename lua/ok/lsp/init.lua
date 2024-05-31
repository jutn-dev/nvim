
vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

require "ok.lsp.mason"
require("ok.lsp.handlers").setup()


