return {
  "neovim/nvim-lspconfig",
  dependencies = { "jose-elias-alvarez/null-ls.nvim" },
  config = function(_, opts)
    local on_attach = require("plugins.configs.lspconfig").on_attach
    local capabilities = require("plugins.configs.lspconfig").capabilities

    local lspconfig = require "lspconfig"
    local servers = {
    --   "html",
    --   "cssls",
    --   "clangd",
      "ansiblels",
      "bashls",
      "dockerls",
    --   "jsonls",
      "terraformls",
      "yamlls",
      "pyright"
    }

    opts.on_attach = on_attach
    opts.capabilities = capabilities

    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup(opts)
    end
  end,
}
