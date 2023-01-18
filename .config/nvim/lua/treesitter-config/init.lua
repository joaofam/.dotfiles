local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

-- local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
-- ft_to_parser.motoko = "typescript"

configs.setup {
  ensure_installed = "all", -- one of "all" or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    -- use_languagetree = true,
    enable = true, -- false will disable the whole extension
    -- disable = { "css", "html" }, -- list of language that will be disabled
    -- disable = { "css", "markdown" }, -- list of language that will be disabled
    disable = { "markdown" }, -- list of language that will be disabled
    -- additional_vim_regex_highlighting = true,
  },

  autopairs = {
    enable = true,
  },

  indent = { enable = true },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  autotag = {
    enable = true,
    disable = { "xml", "markdown" },
  },
  rainbow = {
    enable = true,
    colors = {
      "#68a0b0",
      "#946EaD",
      "#c7aA6D",
      -- "Gold",
      -- "Orchid",
      -- "DodgerBlue",
      -- "Cornsilk",
      -- "Salmon",
      -- "LawnGreen",
    },
    disable = { "html" },
    },

    context_commentstring = {
		enable = false,
		enable_autocmd = false,
	},

    --> textobjects selection <--
	textobjects = {
		select = {
			enable = true,
			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
            },
        },
        --> LSP interop <--
        lsp_interop = {
			enable = true,
			border = "none",
			peek_definition_code = {
				["<leader>df"] = "@function.outer",
				["<leader>dF"] = "@class.outer",
			},
		},
	},
    --> playground module
    playground = {
    enable = true,
    enable = true,
		disable = {},
		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = false, -- Whether the query persists across vim sessions
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?",
        },
    },

    --> refactor module
	refactor = {
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr",
			},
		},
	},
}
