return {
  {
    "benlubas/molten-nvim",
    version = "1.8.5", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "willothy/wezterm.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.molten_auto_open_output = false
      vim.g.molten_output_show_more = true
      vim.g.molten_image_provider = "wezterm"
      vim.g.molten_output_virt_lines = true
      vim.g.molten_split_direction = "right" --direction of the output window, options are "right", "left", "top", "bottom"
      vim.g.molten_split_size = 40 --(0-100) % size of the screen dedicated to the output window
      vim.g.molten_virt_text_output = true
      vim.g.molten_use_border_highlights = true
      vim.g.molten_virt_lines_off_by_1 = true
      vim.g.molten_auto_image_popup = false
      vim.g.molten_output_win_zindex = 50

      -- keymaps
      vim.keymap.set('n', '<localleader>mi', ":MoltenInit<CR>", { desc = "initialise molten", silent = true })

      vim.keymap.set("n", "<localleader>me", ":MoltenEvaluateOperator<CR>", { desc = "evaluate operator", silent = true })
      vim.keymap.set("n", "<localleader>mo", ":noautocmd MoltenEnterOutput<CR>", { desc = "open output window", silent = true })

      vim.keymap.set("n", "<localleader>mr", ":MoltenReevaluateCell<CR>", { desc = "re-eval cell", silent = true })
      vim.keymap.set("v", "<localleader>mv", ":<C-u>MoltenEvaluateVisual<CR>gv", { desc = "execute visual selection", silent = true })
      vim.keymap.set("n", "<localleader>mc", ":MoltenHideOutput<CR>", { desc = "close output window", silent = true })
      vim.keymap.set("n", "<localleader>md", ":MoltenDelete<CR>", { desc = "delete Molten cell", silent = true })

      local runner = require("quarto.runner")
      vim.keymap.set("n", "<localleader>rc", runner.run_cell,  { desc = "run cell", silent = true })
      vim.keymap.set("n", "<localleader>ra", runner.run_all,   { desc = "run all cells", silent = true })
      vim.keymap.set("n", "<localleader>rl", runner.run_line,  { desc = "run line", silent = true })
      vim.keymap.set("v", "<localleader>rv",  runner.run_range, { desc = "run visual range", silent = true })
      vim.keymap.set("n", "<localleader>rA", function()
        runner.run_all(true)
      end, { desc = "run all cells of all languages", silent = true })
    end,
  },
}
