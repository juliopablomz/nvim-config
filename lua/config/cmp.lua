local cmp = require'cmp'

cmp.setup({
  completion = {
    -- The cmp pop-up will not appear unless invoked.
    autocomplete = false,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    -- TODO: ...
  }, { { name = 'buffer' } }),
})
