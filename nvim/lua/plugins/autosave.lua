return {
  "Pocco81/auto-save.nvim",
  lazy = false,
  config = function()
    require("auto-save").setup({
      enabled = true,
      execution_message = {
        message = function()
          return "AutoSaved at " .. vim.fn.strftime("%H:%M:%S")
        end,
      },
      trigger_events = { "InsertLeave", "TextChanged" },
    })
  end,
}
