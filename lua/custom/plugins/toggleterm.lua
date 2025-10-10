return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      shell = 'powershell.exe',
    },
    init = function()
      vim.keymap.set('n', '<localleader>tt', ':ToggleTerm<CR>', { desc = 'Open terminal', silent = true })
    end,
  },
}
