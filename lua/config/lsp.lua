local lspconfig = require('lspconfig');
local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- configure you installed lsp here:
local servers = { 
  { 
    name = 'clangd', 
    -- cmd field is optional:
    cmd = {
      'clangd',
      '-header-insertion=never',
    },
  },
};

for _, server in ipairs(servers) do
  local config = {
    capabilities = cmp_capabilities,
  }

  if server.cmd then
    config.cmd = server.cmd
  end

  lspconfig[server.name].setup(config)
end
