vim.api.nvim_create_user_command("Path","lua print(vim.api.nvim_buf_get_name(0))", {desc = 'Print current file path'})
