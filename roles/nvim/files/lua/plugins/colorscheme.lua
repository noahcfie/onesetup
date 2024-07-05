return {
  {
    "catppuccin/nvim",
		lazy = false,
		name = "catppuccin", 
		priority = 1000,
		config = function()
      local catppuccin = require("catppuccin")
			catppuccin.setup({
				flavour = "mocha",
				transparent_background = true,
        -- HIGHLIGHT COLOR OVERRIDES --
        -- :highlight to show all highlight groups
        highlight_overrides = {
          mocha = function(mocha)
            return {
              -- syntax
              Comment = { fg = mocha.surface2 },
              -- line numbers
              LineNr = { fg = mocha.red },
              CursorLineNr = { fg = mocha.red },
              LineNrAbove = { fg = mocha.sky },
              LineNrBelow = { fg = mocha.sky },
            }
          end
        },
        -- PLUGIN INTEGRATIONS --
        integrations = {
          treesitter = true,
          telescope = {
            enabled = true,
            style = "nvchad",
          }
        },
			})

		vim.cmd.colorscheme "catppuccin"
		end,
	}
}
