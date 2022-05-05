-- This is an example chadrc file , its supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M = {
  ui = {
   theme = "onedark",
   italic_comments = true,
  },

  options = {
    clipboard = "",
  },

  plugins = {
    user = {
      ["goolord/alpha-nvim"] = {
        disable = false,
      },
    },
  },
}

return M
