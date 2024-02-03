---@type ChadrcConfig
local M = {}

-- color or comments
vim.api.nvim_set_hl(0, 'Comment', {fg = '#93949B'})

-- no swap file
vim.opt.swapfile = false
vim.opt.relativenumber = true
-- status line whole path
--vim.opt.statusline = '%F'
vim.opt.scrolloff = 8
vim.opt.smartcase = true
vim.opt.scrolloff = 999
vim.opt.colorcolumn = "80"
-- autoread
vim.opt.autoread = true
vim.api.nvim_create_autocmd('CursorHold', {
  pattern = '*',
  callback = function()
    vim.api.nvim_command('checktime')
  end
})

-- Telescope grep_string
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>fg', function()
--	builtin.grep_string({search = vim.fn.input("Grep > ")})
--end)


M.ui = { theme = 'gruvbox' }

return M
