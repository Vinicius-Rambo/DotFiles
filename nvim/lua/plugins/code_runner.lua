return {
  "CRAG666/code_runner.nvim",
  event = "VeryLazy",
  config = function()
    require("code_runner").setup({
      mode = "float",

      float = {
        border = "rounded",
        height = 0.9,
        width = 0.9,
        x = 0.5,
        y = 0.5,
      },

      filetype = {
        python = "python3 $fileName",
        javascript = "node $fileName",
        lua = "lua $fileName",
        sh = "bash $fileName",
        cpp = "g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
      },
    })
  end,
}
