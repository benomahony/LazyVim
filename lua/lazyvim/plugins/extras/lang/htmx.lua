return {
  recommended = function()
    return LazyVim.extras.wants({
      ft = "htmx",
    })
  end,
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "htmx" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {},
  },
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    opts = function(_, opts)
      opts.auto_brackets = opts.auto_brackets or {}
      table.insert(opts.auto_brackets, "htmx")
    end,
  },
}
