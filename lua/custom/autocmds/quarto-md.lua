vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    require("quarto").activate()
  end,
})
