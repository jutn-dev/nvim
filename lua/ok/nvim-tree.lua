--require("nvim-tree").setup()

-- OR setup with some options
--require("nvim-tree").setup({
--  disable_netrw = true,
--  hijack_netrw = true,
--  update_cwd = true,
--	sort_by = "case_sensitive",
--  update_focused_file = {
--      enable = true,
--      update_cwd = true,
--      update_root = true,
--	  ignore_list = {},
--    },
--  git = {
--      enable = true,
--      ignore = false,
--      timeout = 500,
--  },
--  view = {
--	preserve_window_proportions = true,
--    width = 30,
--    mappings = {
--      list = {
--        { key = "u", action = "dir_up" },
--      },
--    },
--  },
--  renderer = {
--    group_empty = true,
--  },
--  filters = {
--    dotfiles = true,
--  },
--})
