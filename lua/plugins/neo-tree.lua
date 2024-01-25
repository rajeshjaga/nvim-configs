return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = true,
					hide_hidden = true,
					never_show = { ".git" },
				},
			},
			window = {
				position = "left",
				width = 30,
			},
			mapping_options = {
				noremap = true,
				nowait = true,
			},
			mappings = {
				["<space>"] = {
					"toggle_node",
					nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use
				},
				["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
			},
		})
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left <CR>", {})
		vim.keymap.set("n", "<C-e>", ":Neotree toggle <CR>", {})
	end,
}
