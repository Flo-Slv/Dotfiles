require('telescope').setup {
	defaults = {
		mappings = {
			i = {
				["<c-a>"] = function()
					print("Hey Flo !")
				end
			}
		}
	}
}

require('telescope').load_extension('fzf')
