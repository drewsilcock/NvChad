local lspconfig = require("lspconfig")

local function setup_lsp(on_attach, capabilities)
  lspconfig.pyright.setup{
      on_attach = on_attach,
      capabilities = capabilities,
  }
  lspconfig.gopls.setup{
      on_attach = on_attach,
      capabilities = capabilities,
  }
  lspconfig.tsserver.setup{
      on_attach = on_attach,
      capabilities = capabilities,
  }
  lspconfig.rust_analyzer.setup{
      on_attach = on_attach,
      capabilities = capabilities,
      -- Server-specific settings...
      settings = {
        ["rust-analyzer"] = {}
      },
  }
end

return {
  setup_lsp = setup_lsp,
}
