local languages = {
  typescript = {
    require('efmls-configs.linters.eslint'),
    require('efmls-configs.formatters.prettier'),
  },
  lua = {
    require('efmls-configs.formatters.stylua'),
  },
}

local efmls_config = {
  filetypes = vim.tbl_keys(languages),
  settings = {
    rootMarkers = { '.git/' },
    languages = languages,
  },
  init_options = {
    documentFormatting = true,
    documentRangeFormatting = true,
  },
}

-- If using nvim >= 0.11 then use the following
vim.lsp.config('efm', vim.tbl_extend('force', efmls_config, {
  cmd = { 'efm-langserver' },

  -- Pass your custom lsp config below like on_attach and capabilities
  --
  -- on_attach = on_attach,
  -- capabilities = capabilities,
}))
