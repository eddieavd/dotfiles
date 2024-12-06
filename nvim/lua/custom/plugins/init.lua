-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local M = {}

M.dap = {
  plugin = true,
  n = {
    ['<leader>db'] = {
      '<cmd> DapToggleBreakpoint<CR>',
      'Toggle breakpoint at line',
    },
    ['<leader>dr'] = {
      '<cmd> DapContinue<CR>',
      'Start or continue debugger',
    },
  },
}

return M
