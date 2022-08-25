require('neo-tree').setup({
	close_if_last_window = true,
  default_component_configs = {
    container = {
      enable_character_fade = true
    },
    indent = {
      indent_size = 2,
      padding = 1,
      with_markers = false,
      with_expanders = false,
    },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "ﰊ",
    },
    name = {
      trailing_slash = true,
    },
  },
	filesystem = {
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
			follow_current_file = true,
		}
	},
	window = {
		position = 'right',
		width = 50,
	}
})
