return {
	"barrett-ruth/live-server.nvim",
	cmd = { "LiveServerStart", "LiveServerStop", "LiveServerToggle" },
	ft = { "html", "css", "javascript" },
	opts = {
		port = 8080,
		open_browser = true,
		browser_command = "flatpak run com.brave.Browser", -- Set Brave as default browser
		filetypes = { "html", "css", "javascript" },
		live_reload = true,
		watch_dir = nil,
	},
	keys = {
		{ "<leader>o", "<cmd>LiveServerToggle<CR>", desc = "Toggle Live Server" },
	},
}
