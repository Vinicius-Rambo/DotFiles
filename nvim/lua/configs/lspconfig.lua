-- NVChad defaults (mantém)
require("nvchad.configs.lspconfig").defaults()

-- Lista de servidores (SEM volar)
local servers = {
  clangd = {},
  cmake = {},
  pyright = {},
  html = {},
  cssls = {},
  tailwindcss = {},
  bashls = {},
  lua_ls = {},
  ts_ls = {},
  phpactor = {},
  intelephense = {},
  jdtls = {},
  vue_ls = {}, -- substitui volar
}

-- Emmet (config específica)
servers.emmet_ls = {
  filetypes = {
    "html",
    "css",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "php",
    "blade",
    "vue",
  },
}

-- Lua (Neovim)
servers.lua_ls = {
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = {
        checkThirdParty = false,
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
}

-- Aplica configs usando a API nova
for server, config in pairs(servers) do
  vim.lsp.config(server, config)
end
