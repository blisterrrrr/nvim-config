return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require('nvim-treesitter.configs').setup({
        auto_install = true,
        indent = {
          enable = false
        }
      })
    end
}
