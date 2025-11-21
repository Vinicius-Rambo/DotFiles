M.plugins = {
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },
}

M.ui = {
  theme = "tokyonight",
  nvdash = {
    load_on_startup = false,
  },
}

return M
