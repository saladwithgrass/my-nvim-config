return {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },

    -- config = function(_, opts) local lspconfig = vim.lsp.config
    -- for server, config in pairs(opts.servers) do
    -- config.capabilities =
    -- require('blink.cmp').get_lsp_capabilities(config.capabilities)
    -- lsp lspconfig[server].setup(config) end end
}
