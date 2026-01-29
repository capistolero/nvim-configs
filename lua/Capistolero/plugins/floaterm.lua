return {
	"voldikss/vim-floaterm",
	config = function()
		-- Key mapping to toggle floaterm
		vim.api.nvim_set_keymap("n", "<leader>ft", ":FloatermToggle<CR>", { noremap = true, silent = true })
	end,
}
