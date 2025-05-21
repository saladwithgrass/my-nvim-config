return {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      animation = false,
      tabpages = true,
      icons = {
        filetype = {
          enabled = false
        },
        gitsigns = {
              added = {enabled = true, icon = '+'},
              changed = {enabled = true, icon = '~'},
              deleted = {enabled = true, icon = '-'},
            },
      },
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
