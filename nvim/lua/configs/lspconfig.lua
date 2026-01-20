
local lspconfig = require("lspconfig")
local nvlsp = require("nvchad.configs.lspconfig")

-- defaults do NVChad
nvlsp.defaults()

-- Lista de servidores
local servers = {
  clangd = {},  -- C / C++
  pyright = {}, -- Python
  intelephense = {},

  -- Web
  html = {},
  cssls = {},
  tailwindcss = {},
  emmet_ls = {
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
  },
  bashls = {},

  -- Lua (Neovim)
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = { globals = { "vim" } },
        workspace = {
          checkThirdParty = false,
          library = vim.api.nvim_get_runtime_file("", true),
        },
      },
    },
  },
}

-- Aplica os servidores
for server, opts in pairs(servers) do
  lspconfig[server].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    settings = opts.settings,
    filetypes = opts.filetypes,
  }
end
