---@type ChadrcConfig
local M = {}
M.ui = {
  theme = 'catppuccin',
  hl_override = {
    Comment = {
      fg="white"
    },
    CursorLine = {
      bg = "grey",
    }
  }
}
M.plugins = 'custom.plugin-loader'
M.mappings = require "custom.mappings"
return M
