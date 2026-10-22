return {
  -- Nvim-Autopairs: Automatically closes brackets, quotes, and parens
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- Performance tip: Only load when you start typing
    config = true
  },
}
