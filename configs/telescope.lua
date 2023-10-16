-- Load the Telescope module
local telescope = require('telescope')

-- Configure live grep
telescope.setup {
  defaults = {
    -- Your other Telescope configuration options here
  },
  extensions = {
    fzf = {
      override_generic_sorter = false, -- Use the native sorter
      override_file_sorter = true,     -- Use the native file sorter
    },
  },
}

-- Load the Telescope extensions
telescope.load_extension('fzf')

