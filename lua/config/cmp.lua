local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  completion = {
    -- The cmp pop-up will not appear unless invoked.
    autocomplete = false,
  },
  mapping = cmp.mapping.preset.insert({
    ['<PageDown>'] = cmp.mapping.scroll_docs(4),
    ['<PageUp>'] = cmp.mapping.scroll_docs(-4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, { { name = 'buffer' } }),
})
