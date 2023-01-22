local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
  [[]],
  [[]],
  [[]],
  [[]],
  [[]],
  [[]],
  [[]],
  [[      ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ ]],
  [[      ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗]],
  [[      ███████║███████║██║     █████╔╝ █████╗  ██████╔╝]],
  [[      ██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗]],
  [[      ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║]],
  [[      ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝]],
  [[]],
  [[]],
  [[]],
  [[██╗    ██╗ █████╗ ███╗   ██╗███╗   ██╗ █████╗ ██████╗ ███████╗]],
  [[██║    ██║██╔══██╗████╗  ██║████╗  ██║██╔══██╗██╔══██╗██╔════╝]],
  [[██║ █╗ ██║███████║██╔██╗ ██║██╔██╗ ██║███████║██████╔╝█████╗  ]],
  [[██║███╗██║██╔══██║██║╚██╗██║██║╚██╗██║██╔══██║██╔══██╗██╔══╝  ]],
  [[╚███╔███╔╝██║  ██║██║ ╚████║██║ ╚████║██║  ██║██████╔╝███████╗]],
  [[ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═════╝ ╚══════╝]],
  [[]],
  [[]],
  [[]],
  [[]],
}
dashboard.section.buttons.val = {
  dashboard.button("f", " " .. " Buscar archivo", ":Telescope find_files <CR>"),
  dashboard.button("e", " " .. " Nuevo archivo", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", " " .. " Buscar proyecto", ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button("r", " " .. " Archivos recientes", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " " .. " Buscar texto", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Configuración", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", " " .. " Salir", ":qa<CR>"),
}
local function footer()
  return "juanmiguel@nitrocero"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
