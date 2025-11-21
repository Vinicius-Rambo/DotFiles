return {
  "goolord/alpha-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[  _____                 _       __      ___           ]],
      [[ |  __ \               | |      \ \    / (_)          ]],
      [[ | |__) |__ _         | |__   __\ \  / /  _ _ __ ___  ]],
      [[ |  _  // _` | '_ ` _ \| '_ \ / _ \ \/ / | | '_ ` _ \ ]],
      [[ | | \ \ (_| | | | | | | |_) | (_) \  /  | | | | | | |]],
      [[ |_|  \_\__,_|_| |_| |_|_.__/ \___/ \/   |_|_| |_| |_|]],
      [[                                                      ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  Novo arquivo", ":ene <BAR> startinsert<CR>"),
      dashboard.button("f", "  Buscar arquivo", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recentes", ":Telescope oldfiles<CR>"),
      dashboard.button("p", "  Projetos", ":Telescope projects<CR>"),
      dashboard.button("c", "  Configurações", ":e $MYVIMRC<CR>"),
      dashboard.button("q", "  Sair", ":qa<CR>"),
    }

    dashboard.section.header.opts.hl = "Type"
    dashboard.section.buttons.opts.hl = "Keyword"
    dashboard.section.footer.opts.hl = "Comment"

    alpha.setup(dashboard.opts)
  end,
}
