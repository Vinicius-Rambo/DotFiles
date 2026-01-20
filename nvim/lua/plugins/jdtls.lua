local jdtls = require("jdtls")
local util = require("lspconfig.util")

local root_dir = util.root_pattern(
  "pom.xml",
  "build.gradle",
  "settings.gradle",
  ".git"
)(vim.fn.getcwd())

if not root_dir then
  return
end

local workspace_dir = vim.fn.stdpath("data")
  .. "/jdtls-workspace/"
  .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local config = {
  cmd = { "jdtls" },
  root_dir = root_dir,
  init_options = {
    workspace = workspace_dir,
  },
  settings = {
    java = {
      eclipse = {
        downloadSources = true,
      },
      configuration = {
        updateBuildConfiguration = "interactive",
      },
      maven = {
        downloadSources = true,
      },
      implementationsCodeLens = {
        enabled = true,
      },
      referencesCodeLens = {
        enabled = true,
      },
      inlayHints = {
        parameterNames = {
          enabled = "all",
        },
      },
    },
  },
}
jdtls.start_or_attach(config)
