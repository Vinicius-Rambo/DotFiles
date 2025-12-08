-- NVChad defaults
require("nvchad.configs.lspconfig").defaults()

-- Servidores de C, Python, HTML, CSS, PHP, bash, Lua, TS
local servers = {
  "clangd",
  "cmake",
  "pyright",
  "html",
  "cssls",
  "emmet_ls",
  "tailwindcss",
  "bashls",
  "lua_ls",
  "ts_ls",
  "volar",
  "phpactor",
  "intelephense",
  "jdtls",
}

vim.lsp.enable(servers)

-- Configurações extras
local lspconfig = require("lspconfig")

-- Emmet dentro de PHP/JS/TS/HTML
lspconfig.emmet_ls.setup({
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
})

-- Lua (Neovim)
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      workspace = { library = vim.api.nvim_get_runtime_file("", true) },
    },
  },
})

-- Java
lspconfig.jdtls.setup({})
