return {
    {"williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({})
        end,
    },
    {"williamboman/mason.nvim",
        config = function() 
            require("mason").setup({})
        end,
    },
    {"neovim/nvim-lspconfig",
        event = { 'BufReadPre', 'BufReadPost', 'BufNewFile' },
        dependencies = {
          -- "hrsh7th/cmp-nvim-lsp",
          "SmiteshP/nvim-navic",
        },
        config = function()
            -- setting up cmp
            -- local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            local lspconfig = require("lspconfig")
            local mason_lspconfig = require("mason-lspconfig")
            mason_lspconfig.setup_handlers({
                -- default handler for installed servers
                function(server_name)
                    lspconfig[server_name].setup({
                      capabilities = capabilities,
                      on_attach = function(client, bufnr)
                        require("nvim-navic").attach(client, bufnr)
                      end,
                    })
                end,
                ['lua_ls'] = function()
                  lspconfig.lua_ls.setup {
                    on_init = function(client)
                      client.server_capabilities.documentFormattingProvider = false
                      client.server_capabilities.documentFormattingRangeProvider = false
                    end,
                    on_attach = function (client, bufnr)
                        require("nvim-navic").attach(client, bufnr)
                    end,
                    settings = {
                      Lua = {
                        completion = {
                          callSnippet = "Replace"
                        }
                      }
                    }
                  }
                end
            })

            --[[ vim.api.nvim_create_autocmd("LspAttach", {
              callback = function (args)
                vim.notify(args, 1)
              end
            }) ]]
        end,
    },
}
