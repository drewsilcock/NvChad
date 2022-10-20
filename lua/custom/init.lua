local g = vim.g

g.nvim_tree_allow_resize = 1
g.nvim_tree_auto_ignore_ft = { "dashboard" } -- don't open tree on specific fiypes.

g.neoformat_enabled_python = {'black', 'isort'}
g.neoformat_run_all_formatters = 1

vim.o.termguicolors = true

