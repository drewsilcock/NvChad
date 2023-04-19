local g = vim.g

g.nvim_tree_allow_resize = 1
g.nvim_tree_auto_ignore_ft = { "dashboard" } -- don't open tree on specific fiypes.

g.neoformat_enabled_python = {'black', 'isort'}
g.neoformat_run_all_formatters = 1

vim.o.termguicolors = true

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
