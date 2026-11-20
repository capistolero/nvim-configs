return {
	"anurag3301/nvim-platformio.lua",
	dependencies = {
		{ "nvim-telescope/telescope.nvim" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-lua/plenary.nvim" },
		{ "folke/which-key.nvim" },
		{ "nvim-treesitter/nvim-treesitter" },
		{ "akinsho/toggleterm.nvim" }, -- Mandatory for background terminal tasks
	},
	config = function()
		local status_ok, pio_utils = pcall(require, "platformio.utils")
		if not status_ok then
			vim.notify("PlatformIO utils not found. Run :Lazy sync", vim.log.levels.ERROR)
			return
		end

		-- This checks for the python env and sets up the plugin
		if pio_utils.pio_install_check() then
			require("platformio").setup({
				-- Add any custom setup options here if you want them later
			})
			vim.notify("PlatformIO loaded successfully!", vim.log.levels.INFO, { title = "PlatformIO" })
		end
	end,
}
