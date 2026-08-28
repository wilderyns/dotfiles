---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    opts = function(_, opts)
      opts.servers = require("astrocore").list_insert_unique(opts.servers or {}, { "ruby_lsp" })
      opts.config = opts.config or {}
      opts.config.ruby_lsp = vim.tbl_deep_extend("force", opts.config.ruby_lsp or {}, {
        cmd = { vim.fn.expand "~/.local/share/mise/shims/ruby-lsp" },
        workspace_required = true,
      })
    end,
  },
}
