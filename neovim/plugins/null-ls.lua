return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require "null-ls"
    local formatting_autogroup = vim.api.nvim_create_augroup("LspFormatting", {})
    local formatting = null_ls.builtins.formatting
    local lint = null_ls.builtins.diagnostics

    local sources = {
      formatting.prettier,

      -- shell
      lint.shellcheck,
      formatting.shfmt,

      -- python
      lint.mypy,
      lint.ruff,
      formatting.black
      -- python

    }

    null_ls.setup {
      debug = true,
      sources = sources,
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({
            group = formatting_autogroup,
            buffer = bufnr
          })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = formatting_autogroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({
                bufnr = bufnr,
              })
            end
          })
        end
      end
    }
  end
}
