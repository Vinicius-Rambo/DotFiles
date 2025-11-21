require "nvchad.mappings"

local map = vim.keymap.set

-- seus maps
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Runner (SPACE + R)
map("n", "<leader>r", "<cmd>RunCode<CR>", { desc = "Run code" })

-- Buscar arquivos (SPACE + S)
map("n", "<leader>s", "<cmd>Telescope find_files<CR>", { desc = "Buscar arquivos" })

-- Buscar texto (SPACE + F)
map("n", "<leader>f", "<cmd>Telescope live_grep<CR>", { desc = "Buscar texto" })