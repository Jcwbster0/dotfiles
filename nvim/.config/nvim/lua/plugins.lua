-- 1. Automatically bootstrap lazy.nvim package engine if it's missing
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 2. Define your development plugin catalog
require("lazy").setup({
  -- The core Language Server pipeline
  { "neovim/nvim-lspconfig" },

  -- Mason: The in-editor package app manager for your language engines
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim" },

  -- The Autocomplete Pop-up Menu Engine
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Feed language tokens into the menu
      "hrsh7th/cmp-path",     -- Feed file path names into the menu
      "hrsh7th/cmp-buffer",   -- Feed words from your current open text buffer
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(), 
          ['<CR>'] = cmp.mapping.confirm({ select = true }), 
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'path' },
          { name = 'buffer' },
        })
      }) -- <-- Fixed: Added missing matching closing brace here!
    end
  }
})

