require "nvchad.mappings"

local map = vim.keymap.set

-- Meus mapps
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Runner (SPACE + R)
map("n", "<leader>r", "<cmd>RunCode<CR>", { desc = "Run code" })

-- Buscar arquivos (SPACE + S)
map("n", "<leader>s", "<cmd>Telescope find_files<CR>", { desc = "Buscar arquivos" })

-- Buscar texto (SPACE + F)
map("n", "<leader>f", "<cmd>Telescope live_grep<CR>", { desc = "Buscar texto" })

-- mover linha para cima
vim.keymap.set("n", "<S-Up>", ":m .-2<CR>==", { silent = true })
vim.keymap.set("n", "H", ":m .-2<CR>==", { silent = true })
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv", { silent = true })

-- mover linha para baixo
vim.keymap.set("n", "<S-Down>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "J", ":m .+1<CR>==", { silent = true })
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv", { silent = true })

--Copiar para baixo a linha:
vim.keymap.set("n", "<S-M>", "yyp", { silent = true })

-- Indentar seleção com TAB (igual VSCode)
vim.keymap.set("v", "<Tab>", ">gv", { silent = true })

-- Desindentar com Shift+TAB
vim.keymap.set("v", "<S-Tab>", "<gv", { silent = true })
