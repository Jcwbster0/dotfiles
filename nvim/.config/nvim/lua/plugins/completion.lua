return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", 
      "hrsh7th/cmp-path",     
      "hrsh7th/cmp-buffer",   
      "L3MON4D3/LuaSnip",             -- Core snippet engine
      "saadparwaiz1/cmp_luasnip",     -- Snippet source bridging to cmp
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(), 
          ['<CR>'] = cmp.mapping.confirm({ select = true }), 
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
          { name = 'buffer' },
        })
      })

      -- Custom Handler Map: Forces auto-parentheses on Classes/Constructors/Functions/Methods
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local handlers = require('nvim-autopairs.completion.handlers')

      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done({
          filetypes = {
            -- "*" applies this behavior to all programming languages
            ["*"] = {
              ["("] = {
                kind = {
                  cmp.lsp.CompletionItemKind.Function,
                  cmp.lsp.CompletionItemKind.Method,
                  cmp.lsp.CompletionItemKind.Class,
                  cmp.lsp.CompletionItemKind.Constructor,
                  cmp.lsp.CompletionItemKind.TypeParameter
                },
                handler = handlers["*"]
              }
            }
          }
        })
      )
    end
  }
}
