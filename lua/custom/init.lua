local g = vim.g

g.nvim_tree_add_trailing = 1 -- append a trailing slash to folder names
g.nvim_tree_allow_resize = 1
g.nvim_tree_auto_close = 0 -- closes tree when it's the last window
g.nvim_tree_auto_ignore_ft = { "dashboard" } -- don't open tree on specific fiypes.
g.nvim_tree_auto_open = 1
g.nvim_tree_disable_netrw = 0
g.nvim_tree_follow = 1
g.nvim_tree_gitignore = 0
g.nvim_tree_hide_dotfiles = 0
g.nvim_tree_ignore = { ".git", "node_modules", ".cache", ".mypy_cache", ".venv", ".DS_Store" }

g.neoformat_enabled_python = {'black', 'isort'}
g.neoformat_run_all_formatters = 1

vim.o.termguicolors = true
