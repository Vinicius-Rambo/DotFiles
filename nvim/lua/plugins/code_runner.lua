return {
  "CRAG666/code_runner.nvim",
  event = "VeryLazy",
  config = function()
    require("code_runner").setup({
      mode = "float",
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
