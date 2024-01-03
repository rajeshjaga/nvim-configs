return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
[[                                                      ]],
[[   ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ ]],
[[   ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ ]],
[[  ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ ]],
[[  ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  ]],
[[  ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ ]],
[[  ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ ]],
[[  ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ]],
[[     ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    ]],
[[           ░    ░  ░    ░ ░        ░   ░         ░    ]],
[[                                  ░                   ]],
    }
    _Gopts = {
      position = center,
      hl = type
    }
    local function footer ()
      return "Things work out, but I don't"
    end
    dashboard.section.footer.val = footer()
    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
  end,
}
