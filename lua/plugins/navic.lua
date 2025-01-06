return {
  {
    "SmiteshP/nvim-navic",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("nvim-navic").setup({
        highlight = true,
        format_text = function(text)
          if text == '' or text == nil then
            return "Top Layer"
          end
          return text
        end
      })
    end
  }
}
