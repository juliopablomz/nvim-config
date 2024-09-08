local lspconfig = require('lspconfig');
local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- configure you installed lsp here:
local servers = { "clangd" };

for _, server in ipairs(servers) do
  lspconfig[server].setup({
    capabilities = cmp_capabilities,
  })
end

