if true then return {} end
return {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {
    bind = true,
    handler_opts = {
      border = "double"
    },
    wrap = false,
    floating_window = true,
  },
  config = function(_, opts) require'lsp_signature'.setup(opts) end
}
