local present, nvimtree = pcall(require, "nvim-tree")

if not present then
   return
end

local options = {
   filters = {
      dotfiles = false,
      exclude = { "custom" },
      custom = { ".git", "node_modules", ".cache", ".mypy_cache", ".venv", ".DS_Store" },
   },
   disable_netrw = false,
   hijack_netrw = false,
   ignore_ft_on_setup = { "alpha" },
   open_on_tab = false,
   hijack_cursor = true,
   hijack_unnamed_buffer_when_opening = false,
   update_cwd = true,
   update_focused_file = {
      enable = true,
      update_cwd = false,
   },
   view = {
      side = "left",
      width = 25,
      hide_root_folder = true,
   },
   git = {
      enable = false,
      ignore = false,
   },
   actions = {
      open_file = {
         resize_window = true,
      },
   },
   renderer = {
      add_trailing = true,
      highlight_git = false,
      highlight_opened_files = "none",

      indent_markers = {
         enable = false,
      },
      icons = {
         padding = " ",
         symlink_arrow = " ➛ ",
         show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = false,
         },
         glyphs = {
            default = "",
            symlink = "",
            folder = {
               default = "",
               empty = "",
               empty_open = "",
               open = "",
               symlink = "",
               symlink_open = "",
               arrow_open = "",
               arrow_closed = "",
            },
            git = {
               unstaged = "✗",
               staged = "✓",
               unmerged = "",
               renamed = "➜",
               untracked = "★",
               deleted = "",
               ignored = "◌",
            },
         },
      },
   },
}

-- check for any override
options = require("core.utils").load_override(options, "kyazdani42/nvim-tree.lua")

nvimtree.setup(options)
