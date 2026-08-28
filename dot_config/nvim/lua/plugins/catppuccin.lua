return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = false,
    integrations = {
      gitsigns = true,
      neotree = true,
      treesitter = true,
      telescope = true,
      mason = true,
      which_key = true,
      blink_cmp = true,
    },
  },
}
