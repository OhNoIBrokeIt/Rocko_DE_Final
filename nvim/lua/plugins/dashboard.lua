return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- ── Header ─────────────────────────────────────────
      dashboard.section.header.val = {
        "                                                     ",
        "  ███╗   ███╗ ██████╗██╗      █████╗ ██████╗ ███████╗███╗   ██╗  ",
        "  ████╗ ████║██╔════╝██║     ██╔══██╗██╔══██╗██╔════╝████╗  ██║  ",
        "  ██╔████╔██║██║     ██║     ███████║██████╔╝█████╗  ██╔██╗ ██║  ",
        "  ██║╚██╔╝██║██║     ██║     ██╔══██║██╔══██╗██╔══╝  ██║╚██╗██║  ",
        "  ██║ ╚═╝ ██║╚██████╗███████╗██║  ██║██║  ██║███████╗██║ ╚████║  ",
        "  ╚═╝     ╚═╝ ╚═════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝  ",
        "                                                     ",
        "          ┌─────────────────────────────────┐        ",
        "          │    N E O V I M  //  M C L A R E N    │        ",
        "          └─────────────────────────────────┘        ",
        "                                                     ",
      }

      dashboard.section.header.opts = {
        hl = "AlphaMcLaren",
        position = "center",
      }

      -- ── Buttons ────────────────────────────────────────
      dashboard.section.buttons.val = {
        dashboard.button("e",        "  New file",        "<cmd>ene<CR>"),
        dashboard.button("SPC ff",   "󰱼  Find file",       "<cmd>Telescope find_files<CR>"),
        dashboard.button("SPC fg",   "  Live grep",       "<cmd>Telescope live_grep<CR>"),
        dashboard.button("SPC fr",   "  Recent files",    "<cmd>Telescope oldfiles<CR>"),
        dashboard.button("SPC e",    "  File explorer",   "<cmd>NvimTreeToggle<CR>"),
        dashboard.button("SPC gg",   "  Git status",      "<cmd>Telescope git_status<CR>"),
        dashboard.button("l",        "󰒲  Lazy",            "<cmd>Lazy<CR>"),
        dashboard.button("m",        "  Mason",           "<cmd>Mason<CR>"),
        dashboard.button("q",        "  Quit",            "<cmd>qa<CR>"),
      }

      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButton"
        button.opts.hl_shortcut = "AlphaMcLaren"
      end

      -- ── Footer ─────────────────────────────────────────
      local function footer()
        local stats = require("lazy").stats()
        local v = vim.version()
        return string.format(
          "  v%d.%d.%d   󰒲  %d plugins   %s ohnoibrokeit",
          v.major, v.minor, v.patch,
          stats.count,
          os.date("  %Y-%m-%d")
        )
      end

      dashboard.section.footer.val = footer()
      dashboard.section.footer.opts = {
        hl = "AlphaFooter",
        position = "center",
      }

      -- ── Layout ─────────────────────────────────────────
      dashboard.config.layout = {
        { type = "padding", val = 4 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        dashboard.section.buttons,
        { type = "padding", val = 2 },
        dashboard.section.footer,
      }

      alpha.setup(dashboard.config)

      -- ── McLaren highlights ──────────────────────────────
      vim.api.nvim_set_hl(0, "AlphaMcLaren", { fg = "#ff6a00", bold = true })
      vim.api.nvim_set_hl(0, "AlphaButton",  { fg = "#cdd6f4" })
      vim.api.nvim_set_hl(0, "AlphaFooter",  { fg = "#ffb000", italic = true })

      -- Reload footer on VimEnter so lazy stats are accurate
      vim.api.nvim_create_autocmd("User", {
        pattern = "LazyVimStarted",
        callback = function()
          dashboard.section.footer.val = footer()
          pcall(vim.cmd.AlphaRedraw)
        end,
      })
    end,
  },
}
