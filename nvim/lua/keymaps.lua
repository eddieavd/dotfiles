-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')

vim.keymap.set('n', '<leader>d', ':BufferClose<CR>')
vim.keymap.set('n', '<leader>t', ':BufferNext<CR>')
vim.keymap.set('n', '<leader>T', ':BufferPrevious<CR>')
vim.keymap.set('n', '<leader>1', ':BufferGoto 1<CR>')
vim.keymap.set('n', '<leader>2', ':BufferGoto 2<CR>')
vim.keymap.set('n', '<leader>3', ':BufferGoto 3<CR>')
vim.keymap.set('n', '<leader>4', ':BufferGoto 4<CR>')
vim.keymap.set('n', '<leader>5', ':BufferGoto 5<CR>')
vim.keymap.set('n', '<leader>6', ':BufferGoto 6<CR>')
vim.keymap.set('n', '<leader>7', ':BufferGoto 7<CR>')
vim.keymap.set('n', '<leader>8', ':BufferGoto 8<CR>')
vim.keymap.set('n', '<leader>9', ':BufferGoto 9<CR>')
vim.keymap.set('n', '<leader>0', ':BufferLast<CR>')

vim.keymap.set('n', '<leader>va', 'gg0vG$')

vim.keymap.set('n', '<leader>cc', ':! cconfig --config-file=cconfig.debug<CR>')
vim.keymap.set('n', '<leader>cr', ':! cconfig --config-file=cconfig.release<CR>')

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<leader>h', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<leader>l', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<leader>j', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<leader>k', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
