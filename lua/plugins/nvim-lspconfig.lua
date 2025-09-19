return {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },

    opts = {
        servers = {

            lua_ls = {
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT',
                        },
                        diagnostics = {
                            globals = { "vim" }
                        },
                        workspace = {
                            library = {
                                vim.fn.expand "$VIMRUNTIME/lua",
                                vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types",
                                vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
                                "${3rd}/luv/library",
                            },
                        },
                    }
                }
            },

            clangd = {
                cmd = {"clangd"},
                filetypes = { 'c', 'cpp', 'h', 'hpp', 'ino'}
            },

            pyright = {
                cmd = { "pyright-langserver", "--stdio" }
            },

            texlab = {
                cmd = {"texlab"}
            }

        }
    },
    config = function(_, opts)
        for server, config in pairs(opts.servers) do
            config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
            vim.lsp.config(server, config)
            vim.lsp.enable(server)
        end
    end
}
