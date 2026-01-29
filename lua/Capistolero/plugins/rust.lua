return {
	{
		"mrcjkb/rustaceanvim",
		version = "^7", -- Recommended
		lazy = false, -- This plugin is already lazy
		config = function()
			-- Direct pathing is more stable in Mason 2.0+
			local mason_path = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/"
			local codelldb_path = mason_path .. "adapter/codelldb"
			local liblldb_path = mason_path .. "lldb/lib/liblldb.so"

			local cfg = require("rustaceanvim.config")
			vim.g.rustaceanvim = {
				dap = {
					adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
				},
			}
		end,
	},
	{
		"saecki/crates.nvim",
		ft = { "toml" },
		config = function()
			require("crates").setup({
				completion = {
					cmp = {
						enabled = true,
					},
				},
			})
		end,
	},
}
