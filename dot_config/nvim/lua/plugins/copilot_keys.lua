-- ~/.config/nvim/lua/plugins/copilot_keys.lua

return {
  -- GitHub Copilot inline suggestion config
  {
    "github/copilot.vim",

    -- Must happen before copilot.vim loads.
    init = function() vim.g.copilot_no_tab_map = true end,

    config = function()
      -- Accept Copilot inline suggestion with Right Arrow.
      -- If no Copilot suggestion is visible, Right Arrow behaves normally.
      vim.keymap.set("i", "<Right>", 'copilot#Accept("\\<Right>")', {
        expr = true,
        replace_keycodes = false,
        silent = true,
      })
    end,
  },

  -- AstroNvim current/default completion engine: blink.cmp
  {
    "saghen/blink.cmp",
    optional = true,
    opts = function(_, opts)
      opts.keymap = opts.keymap or {}

      -- Tab accepts the selected completion item, or the first one if none selected.
      -- If no completion is available, fall through to snippet jump / normal Tab.
      opts.keymap["<Tab>"] = {
        "select_and_accept",
        "snippet_forward",
        "fallback",
      }

      opts.keymap["<S-Tab>"] = {
        "snippet_backward",
        "fallback",
      }
    end,
  },

  -- Older AstroNvim / nvim-cmp setup, harmless if nvim-cmp is not installed
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    opts = function(_, opts)
      local cmp = require "cmp"

      opts.mapping = opts.mapping or {}

      opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.confirm { select = true }
        else
          fallback()
        end
      end, { "i", "s" })
    end,
  },
}
