return {
	"stevearc/oil.nvim",
	event = "VimEnter", -- lazy load after vim startup
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local oil = require("oil")
		oil.setup({
			default_file_explorer = true, -- replace netrw with oil
			delete_to_trash = true, -- use the macos trash dir instead of completely removing the files
			columns = {
				"icon",
			},
			-- KEYMAPS
			keymaps = {
				["?"] = "actions.show_help", -- show help menu
				["<CR>"] = "actions.select", -- open selected file/directory
				["<C-p>"] = "actions.preview", -- preview
				["<C-c>"] = "actions.close", -- close
				["<C-o>"] = "actions.open_external", -- open with default app
				["%"] = "actions.refresh", -- refresh
				["<BS>"] = "actions.parent", -- move to parent directory
				["_"] = "actions.open_cwd", -- move to current working directory
				["cd"] = "actions.cd", -- change working directory
				["cs"] = "actions.change_sort", -- change sorting (name, size, ..)
				["H"] = "actions.toggle_hidden", -- show/hide hidden files
			},
		})
		KEYMAP("n", "<leader>e", "<CMD>Oil<CR>", keymap_opts("oil: open file explorer"))
	end,
}
