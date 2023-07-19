local utils = require("custom.utils")
local directory = "$HOME/.config/nvim/lua/custom/plugins"
local plugin_configs = utils.getLuaFilenames(directory)
local custom_plugins_prefix = "custom.plugins."
local plugins = {}
for _, plugin in ipairs(plugin_configs) do
  local without_extension = plugin:gsub("%.lua$", "")
  local full_lua_import = custom_plugins_prefix .. without_extension
  table.insert(plugins, require(full_lua_import))
end

table.insert(plugins, {
  "mfussenegger/nvim-dap",
  config = function(_, opts)
    require("core.utils").load_mappings("dap")
  end
})
table.insert(plugins, {
  "rcarriga/nvim-dap-ui",
  dependencies = "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup()
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  end
})
table.insert(plugins, {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui"
  },
  config = function (_, opts)
    local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
    require("dap-python").setup(path)
    require("core.utils").load_mappings("dap_python")
  end
})

return plugins
