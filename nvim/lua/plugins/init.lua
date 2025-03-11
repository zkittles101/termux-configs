return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				-- Customize or remove this keymap to your liking
				"<leader>fm",
				function()
					require("conform").format({ async = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		-- This will provide type hinting with LuaLS
		---@module "conform"
		---@type conform.setupOpts
		opts = {
			-- Define your formatters
			formatters_by_ft = {
				lua = { "stylua" },
				markdown = { "mdformat" },
				-- python = { "isort", "black" },
				-- javascript = { "prettierd", "prettier", stop_after_first = true },
			},
			-- Set default options
			default_format_opts = {
				lsp_format = "fallback",
			},
			-- Set up format-on-save
			format_on_save = { timeout_ms = 500 },
			-- Customize formatters
			formatters = {
				shfmt = {
					prepend_args = { "-i", "2" },
				},
			},
		},
		init = function()
			-- If you want the formatexpr, here is the place to set it
			vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		end,
	},

	{ "shaunsingh/nord.nvim" },
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"prettier",
			},
		},
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},

	{ "nvim-lua/plenary.nvim" },

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"vimdoc",
				"markdown",
				"markdown_inline",
				"html",
				"css",
				"go",
				"python",
			},
		},
	},

	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {--[[ things you want to change go here]]
		},
	},

	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
		init = function()
			-- Load the checkboxes module.
			require("markview.extras.checkboxes").setup()
			require("markview.extras.editor").setup()
			-- require("markview.presets").setup();
		end,
		config = function()
			local head = require("markview.presets").headings

			require("markview").setup({
				markdown = {
					headings = head.glow,
				},
			})
			local presets = require("markview.presets").horizontal_rules

			require("markview").setup({
				markdown = {
					horizontal_rules = presets.double,
				},
			})
			local tab = require("markview.presets").tables

			require("markview").setup({
				markdown = {
					tables = tab.rounded,
				},
			})
		end,
	},
	{
		"jbyuki/nabla.nvim",
	},

	{
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},
	{ "rafamadriz/friendly-snippets" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "petertriho/cmp-git" },
	{
		"goolord/alpha-nvim",
	},
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
}
