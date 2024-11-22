return {
	{
		"RRethy/vim-illuminate",
		config = function()
			require("illuminate").configure({
				-- providers: provider used to get references in the buffer, ordered by priority
				providers = {
					"lsp",
					"treesitter",
					"regex",
				},
				-- delay: delay in milliseconds
				delay = 1000,
				-- filetype_overrides: filetype specific overrides.
				filetype_overrides = {},
				-- filetypes_denylist: filetypes to not illuminate
				filetypes_denylist = {
					"dirbuf",
					"dirvish",
					"fugitive",
				},
				-- filetypes_allowlist: filetypes to illuminate
				filetypes_allowlist = {},
				-- modes_denylist: modes to not illuminate
				modes_denylist = {},
				-- modes_allowlist: modes to illuminate
				modes_allowlist = {},
				-- providers_regex_syntax_denylist: syntax to not illuminate
				providers_regex_syntax_denylist = {},
				-- providers_regex_syntax_allowlist: syntax to illuminate
				providers_regex_syntax_allowlist = {},
				-- under_cursor: whether or not to illuminate under the cursor
				under_cursor = true,
				-- large_file_cutoff: number of lines at which to use large_file_config
				large_file_cutoff = nil,
				-- large_file_config: config to use for large files
				large_file_overrides = nil,
				-- min_count_to_highlight: minimum number of matches required to perform highlighting
				min_count_to_highlight = 1,
				-- should_enable: a callback that overrides all other settings to enable/disable illumination
				should_enable = function(bufnr)
					return true
				end,
				-- case_insensitive_regex: sets regex case sensitivity
				case_insensitive_regex = false,
			})

			-- Optional: Set up custom highlight groups if needed
			vim.cmd([[
        highlight IlluminatedWordText guibg=#4c4c4c gui=underline
        highlight IlluminatedWordRead guibg=#3c3c3c gui=underline
        highlight IlluminatedWordWrite guibg=#2c2c2c gui=underline
      ]])
		end,
	},
}
