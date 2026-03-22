return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local mclaren_theme = {
        normal = {
          a = { fg = "#000000", bg = "#ff6a00", gui = "bold" },
          b = { fg = "#ffffff", bg = "#1e1e2e" },
          c = { fg = "#cdd6f4", bg = "#11111b" },
        },
        insert = {
          a = { fg = "#000000", bg = "#ffb000", gui = "bold" },
          b = { fg = "#ffffff", bg = "#1e1e2e" },
          c = { fg = "#cdd6f4", bg = "#11111b" },
        },
        visual = {
          a = { fg = "#000000", bg = "#89b4fa", gui = "bold" },
          b = { fg = "#ffffff", bg = "#1e1e2e" },
          c = { fg = "#cdd6f4", bg = "#11111b" },
        },
        replace = {
          a = { fg = "#000000", bg = "#f38ba8", gui = "bold" },
          b = { fg = "#ffffff", bg = "#1e1e2e" },
          c = { fg = "#cdd6f4", bg = "#11111b" },
        },
        command = {
          a = { fg = "#000000", bg = "#a6e22e", gui = "bold" },
          b = { fg = "#ffffff", bg = "#1e1e2e" },
          c = { fg = "#cdd6f4", bg = "#11111b" },
        },
        inactive = {
          a = { fg = "#888888", bg = "#11111b", gui = "bold" },
          b = { fg = "#888888", bg = "#11111b" },
          c = { fg = "#888888", bg = "#11111b" },
        },
      }

      require("lualine").setup({
        options = {
          theme = mclaren_theme,
          globalstatus = true,
          section_separators = { left = "", right = "" },
          component_separators = { left = "│", right = "│" },
        },
        sections = {
          lualine_a = {
            { "mode", icon = "" },
          },
          lualine_b = {
            {
              "branch",
              icon = "",
              color = { fg = "#ff6a00", gui = "bold" },
            },
            {
              "diff",
              symbols = { added = " ", modified = " ", removed = " " },
              diff_color = {
                added    = { fg = "#a6e22e" },
                modified = { fg = "#ffb000" },
                removed  = { fg = "#ff6a00" },
              },
            },
          },
          lualine_c = {
            {
              "filename",
              path = 1,
              symbols = {
                modified = "  ",
                readonly = "  ",
                unnamed  = "  ",
              },
            },
          },
          lualine_x = {
            {
              "diagnostics",
              sources = { "nvim_lsp" },
              symbols = {
                error = " ",
                warn  = " ",
                info  = " ",
                hint  = " ",
              },
              diagnostics_color = {
                error = { fg = "#ff6a00" },
                warn  = { fg = "#ffb000" },
                info  = { fg = "#89b4fa" },
                hint  = { fg = "#94e2d5" },
              },
            },
            {
              "encoding",
              color = { fg = "#7f849c" },
            },
            {
              "fileformat",
              symbols = { unix = " ", dos = " ", mac = " " },
              color = { fg = "#7f849c" },
            },
            { "filetype", icon_only = false },
          },
          lualine_y = {
            {
              "progress",
              color = { fg = "#ffb000", gui = "bold" },
            },
          },
          lualine_z = {
            {
              "location",
              icon = "",
            },
          },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
        extensions = { "nvim-tree", "lazy", "mason", "trouble" },
      })
    end,
  },
}
