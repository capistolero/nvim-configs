return {
	"barrett-ruth/live-server.nvim",
	cmd = { "LiveServerStart", "LiveServerStop", "LiveServerToggle" },
	ft = { "html", "css", "javascript" },
	config = function()
		-- Optional: Set custom configuration before the plugin loads
		vim.g.live_server = {
			args = { "--port=3000" }, -- Change from default 5555 to 3000
		}
	end,
	keys = {
		{ "<leader>o", "<cmd>LiveServerToggle<CR>", desc = "Toggle Live Server" },
	},
}
