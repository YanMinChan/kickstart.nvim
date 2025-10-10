-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- [[ render-markdown ]]
  require 'custom.plugins.render-markdown',
  -- [[ vimtex]]
  require 'custom.plugins.vimtex',
  -- [[ toggleterm ]]
  require 'custom.plugins.toggleterm',
  -- [[ noice ]] for pop up windows
  require 'custom.plugins.noice',
  -- [[ tiny-inline-diagnostic ]] wrap diagnostic
  require 'custom.plugins.tiny-inline',
  -- [[ wezterm-nvim ]]
  -- require 'custom.plugins.wezterm-nvim',
  -- [[ quarto-nvim ]]
  -- require 'custom.plugins.quarto-nvim',
  -- [[ jupytext ]]
  -- require 'custom.plugins.jupytext-nvim',
  -- [[ molten-nvim ]]
  -- require 'custom.plugins.molten-nvim',
}
