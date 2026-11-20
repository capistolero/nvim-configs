return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		config = function()
			require("toggleterm").setup({
				direction = "float",
				float_opts = {
					border = "curved",
					width = math.floor(vim.o.columns * 0.8),
					height = math.floor(vim.o.lines * 0.8),
					winblend = 3,
				},
			})
		end,
	},
	vim.api.nvim_set_keymap("n", "<leader>ft", ":<cmd>ToggleTerm<CR>", { noremap = true, silent = true }),
}
