return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },

  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {

    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = {
      preset = 'enter',
      ['<C-k>'] = { 'select_prev', 'fallback' },
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<Tab>'] = {
        function(cmp)
          if cmp.snippet_active() then
            return cmp.accept()
          else
            return cmp.select_and_accept()
          end
        end,
        'snippet_forward',
        'fallback',
      }
    },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,
      }
    },
    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        lsp = {
          name = "LSP",
          module = "blink.cmp.sources.lsp",
          opts = {},

          enabled = true,
          async = false,
          timeout_ms = 2000,
          should_show_items = true,
          score_offset = 10
        },
        snippets = {
          name = 'snippets',
          score_offset = 5
        }
      }
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },
    signature = { enabled = true }
  },
  opts_extend = { "sources.default", "sources.providers" }
}
